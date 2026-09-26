.class final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1"
    f = "TapGestureDetector.kt"
    l = {
        0x5e,
        0x6a,
        0x75,
        0x7f,
        0x8c,
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/o0;

.field final synthetic $onDoubleTap:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongPress:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPress:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTap:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Le8/q;Lkotlinx/coroutines/o0;Le8/l;Le8/l;Le8/l;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScopeImpl;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/o0;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Le8/l;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Le8/l;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance v8, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Le8/l;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Le8/l;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Le8/q;Lkotlinx/coroutines/o0;Le8/l;Le8/l;Le8/l;Lkotlin/coroutines/d;)V

    iput-object p1, v8, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    return-object v8
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->f(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
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
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v1

    .line 21
    .line 22
    .line 23
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :pswitch_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Lkotlin/jvm/internal/p0;

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :pswitch_2
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 45
    .line 46
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 49
    .line 50
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 53
    .line 54
    .line 55
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 56
    move-object v12, v2

    .line 57
    move-object v13, v6

    .line 58
    .line 59
    move-object/from16 v2, p1

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :pswitch_3
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 64
    .line 65
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 68
    .line 69
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 72
    .line 73
    .line 74
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :pswitch_4
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 79
    .line 80
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 83
    .line 84
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v6, Lkotlin/jvm/internal/p0;

    .line 87
    .line 88
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 91
    .line 92
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 95
    .line 96
    .line 97
    :try_start_1
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    move-object v9, v8

    .line 99
    move-object v8, v7

    .line 100
    move-object v7, v6

    .line 101
    .line 102
    move-object/from16 v6, p1

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    :catch_0
    move-object v2, v6

    .line 106
    :catch_1
    move-object v6, v8

    .line 107
    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :pswitch_5
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 113
    .line 114
    .line 115
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 116
    .line 117
    move-object/from16 v4, p1

    .line 118
    :cond_0
    move-object v8, v2

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 127
    .line 128
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 129
    const/4 v4, 0x1

    .line 130
    .line 131
    iput v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 132
    const/4 v5, 0x0

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v5, v0, v4, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    if-ne v4, v1, :cond_0

    .line 139
    return-object v1

    .line 140
    :goto_0
    move-object v7, v4

    .line 141
    .line 142
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 146
    .line 147
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->p()V

    .line 151
    .line 152
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->c()Le8/q;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    if-eq v2, v4, :cond_1

    .line 159
    .line 160
    iget-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 161
    const/4 v10, 0x0

    .line 162
    const/4 v11, 0x0

    .line 163
    .line 164
    new-instance v12, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$1;

    .line 165
    .line 166
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    .line 167
    .line 168
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 169
    .line 170
    .line 171
    invoke-direct {v12, v2, v4, v7, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$1;-><init>(Le8/q;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/d;)V

    .line 172
    const/4 v13, 0x3

    .line 173
    const/4 v14, 0x0

    .line 174
    .line 175
    .line 176
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 177
    .line 178
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Le8/l;

    .line 179
    .line 180
    if-eqz v2, :cond_2

    .line 181
    .line 182
    .line 183
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    .line 187
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->d()J

    .line 188
    move-result-wide v4

    .line 189
    goto :goto_1

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    :cond_2
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 195
    .line 196
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/p0;

    .line 197
    .line 198
    .line 199
    invoke-direct {v2}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 200
    .line 201
    :try_start_2
    new-instance v6, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$2;

    .line 202
    .line 203
    .line 204
    invoke-direct {v6, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$2;-><init>(Lkotlin/coroutines/d;)V

    .line 205
    .line 206
    iput-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 213
    .line 214
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 215
    const/4 v9, 0x2

    .line 216
    .line 217
    iput v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 218
    .line 219
    .line 220
    invoke-interface {v8, v4, v5, v6, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->m0(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 221
    move-result-object v6
    :try_end_2
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    .line 223
    if-ne v6, v1, :cond_3

    .line 224
    return-object v1

    .line 225
    :cond_3
    move-object v9, v8

    .line 226
    move-object v8, v7

    .line 227
    move-object v7, v2

    .line 228
    .line 229
    :goto_2
    :try_start_3
    iput-object v6, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 230
    .line 231
    iget-object v2, v7, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 232
    .line 233
    if-nez v2, :cond_4

    .line 234
    .line 235
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->e()V

    .line 239
    goto :goto_5

    .line 240
    :catch_2
    move-object v2, v7

    .line 241
    move-object v7, v8

    .line 242
    move-object v6, v9

    .line 243
    goto :goto_3

    .line 244
    .line 245
    :cond_4
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 249
    .line 250
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m()V
    :try_end_3
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    goto :goto_5

    .line 255
    .line 256
    :goto_3
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Le8/l;

    .line 257
    .line 258
    if-eqz v8, :cond_5

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 262
    move-result-wide v9

    .line 263
    .line 264
    .line 265
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 266
    move-result-object v7

    .line 267
    .line 268
    .line 269
    invoke-interface {v8, v7}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    :cond_5
    iput-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 278
    .line 279
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 280
    const/4 v7, 0x3

    .line 281
    .line 282
    iput v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 283
    .line 284
    .line 285
    invoke-static {v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 286
    move-result-object v7

    .line 287
    .line 288
    if-ne v7, v1, :cond_6

    .line 289
    return-object v1

    .line 290
    .line 291
    :cond_6
    :goto_4
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m()V

    .line 295
    move-object v7, v2

    .line 296
    move-object v9, v6

    .line 297
    .line 298
    :goto_5
    iget-object v2, v7, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 299
    .line 300
    if-eqz v2, :cond_e

    .line 301
    .line 302
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Le8/l;

    .line 303
    .line 304
    if-nez v6, :cond_7

    .line 305
    .line 306
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    .line 307
    .line 308
    if-eqz v1, :cond_e

    .line 309
    .line 310
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 314
    move-result-wide v2

    .line 315
    .line 316
    .line 317
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    .line 321
    invoke-interface {v1, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    goto/16 :goto_8

    .line 324
    .line 325
    :cond_7
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 326
    .line 327
    iput-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 334
    .line 335
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 336
    const/4 v6, 0x4

    .line 337
    .line 338
    iput v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 339
    .line 340
    .line 341
    invoke-static {v9, v2, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    if-ne v2, v1, :cond_8

    .line 345
    return-object v1

    .line 346
    :cond_8
    move-object v12, v7

    .line 347
    move-object v13, v9

    .line 348
    .line 349
    :goto_6
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 350
    .line 351
    if-nez v2, :cond_9

    .line 352
    .line 353
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    .line 354
    .line 355
    if-eqz v1, :cond_e

    .line 356
    .line 357
    iget-object v2, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 363
    move-result-wide v2

    .line 364
    .line 365
    .line 366
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 367
    move-result-object v2

    .line 368
    .line 369
    .line 370
    invoke-interface {v1, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    goto/16 :goto_8

    .line 373
    .line 374
    :cond_9
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->p()V

    .line 378
    .line 379
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    .line 380
    .line 381
    .line 382
    invoke-static {}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->c()Le8/q;

    .line 383
    move-result-object v7

    .line 384
    .line 385
    if-eq v6, v7, :cond_a

    .line 386
    .line 387
    iget-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/o0;

    .line 388
    const/4 v15, 0x0

    .line 389
    .line 390
    const/16 v16, 0x0

    .line 391
    .line 392
    new-instance v6, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$3;

    .line 393
    .line 394
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Le8/q;

    .line 395
    .line 396
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 397
    .line 398
    .line 399
    invoke-direct {v6, v7, v8, v2, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$3;-><init>(Le8/q;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/d;)V

    .line 400
    .line 401
    const/16 v18, 0x3

    .line 402
    .line 403
    const/16 v19, 0x0

    .line 404
    .line 405
    move-object/from16 v17, v6

    .line 406
    .line 407
    .line 408
    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 409
    .line 410
    :cond_a
    :try_start_4
    new-instance v14, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$4;

    .line 411
    .line 412
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 413
    .line 414
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Le8/l;

    .line 415
    .line 416
    iget-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    .line 417
    const/4 v11, 0x0

    .line 418
    move-object v6, v14

    .line 419
    move-object v10, v12

    .line 420
    .line 421
    .line 422
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$4;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Le8/l;Le8/l;Lkotlin/jvm/internal/p0;Lkotlin/coroutines/d;)V

    .line 423
    .line 424
    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v12, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 429
    const/4 v6, 0x5

    .line 430
    .line 431
    iput v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 432
    .line 433
    .line 434
    invoke-interface {v13, v4, v5, v14, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->m0(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 435
    move-result-object v2
    :try_end_4
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_3

    .line 436
    .line 437
    if-ne v2, v1, :cond_e

    .line 438
    return-object v1

    .line 439
    :catch_3
    move-object v4, v12

    .line 440
    move-object v5, v13

    .line 441
    .line 442
    :catch_4
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Le8/l;

    .line 443
    .line 444
    if-eqz v6, :cond_b

    .line 445
    .line 446
    iget-object v4, v4, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 452
    move-result-wide v7

    .line 453
    .line 454
    .line 455
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 456
    move-result-object v4

    .line 457
    .line 458
    .line 459
    invoke-interface {v6, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    :cond_b
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Le8/l;

    .line 462
    .line 463
    if-eqz v4, :cond_c

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 467
    move-result-wide v6

    .line 468
    .line 469
    .line 470
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 471
    move-result-object v2

    .line 472
    .line 473
    .line 474
    invoke-interface {v4, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    :cond_c
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 477
    .line 478
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 481
    const/4 v2, 0x6

    .line 482
    .line 483
    iput v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 484
    .line 485
    .line 486
    invoke-static {v5, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 487
    move-result-object v2

    .line 488
    .line 489
    if-ne v2, v1, :cond_d

    .line 490
    return-object v1

    .line 491
    .line 492
    :cond_d
    :goto_7
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->m()V

    .line 496
    .line 497
    :cond_e
    :goto_8
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 498
    return-object v1

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
