.class final Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->j(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.ClickableKt$handlePressInteraction$2"
    f = "Clickable.kt"
    l = {
        0x19c,
        0x19e,
        0x1a5,
        0x1a6,
        0x1af
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $pressPoint:J

.field final synthetic $pressedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

.field private synthetic L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "J",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    iput-wide p2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 9
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

    new-instance v8, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;

    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    iget-wide v2, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Landroidx/compose/runtime/State;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;-><init>(Landroidx/compose/foundation/gestures/PressGestureScope;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v8, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
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
            "Lkotlinx/coroutines/o0;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
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
    iget v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    if-eq v2, v7, :cond_4

    .line 19
    .line 20
    if-eq v2, v6, :cond_3

    .line 21
    .line 22
    if-eq v2, v5, :cond_2

    .line 23
    .line 24
    if-eq v2, v4, :cond_1

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v1

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 45
    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_3
    iget-boolean v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->Z$0:Z

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lkotlinx/coroutines/b2;

    .line 60
    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 71
    move-object v9, v2

    .line 72
    .line 73
    check-cast v9, Lkotlinx/coroutines/o0;

    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    .line 77
    new-instance v2, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;

    .line 78
    .line 79
    iget-object v13, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 80
    .line 81
    iget-wide v14, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    .line 82
    .line 83
    iget-object v12, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 84
    .line 85
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    const/16 v18, 0x0

    .line 88
    .line 89
    move-object/from16 v16, v12

    .line 90
    move-object v12, v2

    .line 91
    .line 92
    move-object/from16 v17, v3

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v12 .. v18}, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2$delayJob$1;-><init>(Landroidx/compose/runtime/State;JLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 96
    const/4 v13, 0x3

    .line 97
    const/4 v14, 0x0

    .line 98
    .line 99
    .line 100
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$this_handlePressInteraction:Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 104
    .line 105
    iput-object v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v7, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v0}, Landroidx/compose/foundation/gestures/PressGestureScope;->n0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    if-ne v3, v1, :cond_6

    .line 114
    return-object v1

    .line 115
    .line 116
    :cond_6
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    move-result v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 124
    move-result v7

    .line 125
    .line 126
    if-eqz v7, :cond_9

    .line 127
    .line 128
    iput-object v8, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-boolean v3, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->Z$0:Z

    .line 131
    .line 132
    iput v6, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v0}, Lkotlinx/coroutines/f2;->g(Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    if-ne v2, v1, :cond_7

    .line 139
    return-object v1

    .line 140
    :cond_7
    move v2, v3

    .line 141
    .line 142
    :goto_2
    if-eqz v2, :cond_b

    .line 143
    .line 144
    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 145
    .line 146
    iget-wide v6, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressPoint:J

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v6, v7, v8}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/k;)V

    .line 150
    .line 151
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 155
    .line 156
    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 157
    .line 158
    iput-object v3, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput v5, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 161
    .line 162
    .line 163
    invoke-interface {v6, v2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    if-ne v2, v1, :cond_8

    .line 167
    return-object v1

    .line 168
    :cond_8
    move-object v2, v3

    .line 169
    .line 170
    :goto_3
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 171
    .line 172
    iput-object v8, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    iput v4, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 175
    .line 176
    .line 177
    invoke-interface {v3, v2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    if-ne v2, v1, :cond_b

    .line 181
    return-object v1

    .line 182
    .line 183
    :cond_9
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 184
    .line 185
    .line 186
    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 190
    .line 191
    if-eqz v2, :cond_b

    .line 192
    .line 193
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 194
    .line 195
    if-eqz v3, :cond_a

    .line 196
    .line 197
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 201
    goto :goto_4

    .line 202
    .line 203
    :cond_a
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 207
    .line 208
    :goto_4
    iput-object v8, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->L$0:Ljava/lang/Object;

    .line 209
    const/4 v2, 0x5

    .line 210
    .line 211
    iput v2, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->label:I

    .line 212
    .line 213
    .line 214
    invoke-interface {v4, v3, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    if-ne v2, v1, :cond_b

    .line 218
    return-object v1

    .line 219
    .line 220
    :cond_b
    :goto_5
    iget-object v1, v0, Landroidx/compose/foundation/ClickableKt$handlePressInteraction$2;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 226
    return-object v1
.end method
