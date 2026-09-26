.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt$draggable$9$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,485:1\n1#2:486\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2"
    f = "Draggable.kt"
    l = {
        0xed,
        0xef,
        0xf1,
        0xfb,
        0xfd,
        0x101
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dragLogic$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;",
            "Landroidx/compose/foundation/gestures/PointerAwareDraggableState;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/DragLogic;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Lkotlinx/coroutines/channels/d;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 4
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

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Lkotlinx/coroutines/channels/d;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;-><init>(Lkotlinx/coroutines/channels/d;Landroidx/compose/foundation/gestures/PointerAwareDraggableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1

    .line 19
    .line 20
    :pswitch_0
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lkotlinx/coroutines/o0;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 26
    move-object p1, v1

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :pswitch_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lkotlinx/coroutines/o0;

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :goto_0
    move-object v3, p0

    .line 37
    .line 38
    goto/16 :goto_8

    .line 39
    .line 40
    :pswitch_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lkotlinx/coroutines/o0;

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :goto_1
    move-object p1, p0

    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :pswitch_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lkotlinx/coroutines/o0;

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    move-object p1, p0

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    :catch_1
    move-object v1, v3

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :pswitch_4
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lkotlinx/coroutines/o0;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 76
    move-object v4, v3

    .line 77
    move-object v3, p0

    .line 78
    goto :goto_5

    .line 79
    .line 80
    :pswitch_5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Lkotlin/jvm/internal/p0;

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lkotlin/jvm/internal/p0;

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lkotlinx/coroutines/o0;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 94
    move-object v5, v3

    .line 95
    move-object v3, p0

    .line 96
    goto :goto_4

    .line 97
    .line 98
    .line 99
    :pswitch_6
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 104
    :goto_2
    move-object v1, p0

    .line 105
    .line 106
    .line 107
    :goto_3
    invoke-static {p1}, Lkotlinx/coroutines/p0;->h(Lkotlinx/coroutines/o0;)Z

    .line 108
    move-result v3

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    new-instance v3, Lkotlin/jvm/internal/p0;

    .line 113
    .line 114
    .line 115
    invoke-direct {v3}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 116
    .line 117
    iget-object v4, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Lkotlinx/coroutines/channels/d;

    .line 118
    .line 119
    iput-object p1, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v3, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v3, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 124
    const/4 v5, 0x1

    .line 125
    .line 126
    iput v5, v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 127
    .line 128
    .line 129
    invoke-interface {v4, v1}, Lkotlinx/coroutines/channels/t;->v(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    .line 132
    if-ne v4, v0, :cond_0

    .line 133
    return-object v0

    .line 134
    :cond_0
    move-object v5, v3

    .line 135
    move-object v3, v1

    .line 136
    move-object v1, v5

    .line 137
    move-object v8, v4

    .line 138
    move-object v4, p1

    .line 139
    move-object p1, v8

    .line 140
    .line 141
    :goto_4
    iput-object p1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 142
    .line 143
    iget-object p1, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 144
    .line 145
    instance-of p1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 146
    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->a(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    iget-object v1, v5, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 158
    .line 159
    iput-object v4, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v5, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$2:Ljava/lang/Object;

    .line 164
    const/4 v6, 0x2

    .line 165
    .line 166
    iput v6, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v4, v1, v3}, Landroidx/compose/foundation/gestures/DragLogic;->b(Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    if-ne p1, v0, :cond_1

    .line 173
    return-object v0

    .line 174
    :cond_1
    move-object v1, v5

    .line 175
    .line 176
    :goto_5
    :try_start_3
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$state:Landroidx/compose/foundation/gestures/PointerAwareDraggableState;

    .line 177
    .line 178
    sget-object v5, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 179
    .line 180
    new-instance v6, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;

    .line 181
    .line 182
    iget-object v7, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$channel:Lkotlinx/coroutines/channels/d;

    .line 183
    .line 184
    .line 185
    invoke-direct {v6, v1, v7, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2$2;-><init>(Lkotlin/jvm/internal/p0;Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V

    .line 186
    .line 187
    iput-object v4, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 190
    const/4 v7, 0x3

    .line 191
    .line 192
    iput v7, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, v5, v6, v3}, Landroidx/compose/foundation/gestures/PointerAwareDraggableState;->b(Landroidx/compose/foundation/MutatePriority;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 196
    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    .line 198
    if-ne p1, v0, :cond_2

    .line 199
    return-object v0

    .line 200
    :cond_2
    move-object p1, v3

    .line 201
    move-object v3, v4

    .line 202
    .line 203
    :goto_6
    :try_start_4
    iget-object v4, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 204
    .line 205
    .line 206
    invoke-static {v4}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->a(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 210
    .line 211
    instance-of v5, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 212
    .line 213
    if-eqz v5, :cond_4

    .line 214
    .line 215
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 216
    .line 217
    iput-object v3, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    iput-object v2, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 220
    const/4 v5, 0x4

    .line 221
    .line 222
    iput v5, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v3, v1, p1}, Landroidx/compose/foundation/gestures/DragLogic;->c(Lkotlinx/coroutines/o0;Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    if-ne v1, v0, :cond_3

    .line 229
    return-object v0

    .line 230
    :cond_3
    move-object v1, v3

    .line 231
    :goto_7
    move-object v8, v1

    .line 232
    move-object v1, p1

    .line 233
    move-object p1, v8

    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    :catch_2
    move-object v1, v3

    .line 237
    move-object v3, p1

    .line 238
    goto :goto_8

    .line 239
    .line 240
    :cond_4
    instance-of v1, v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 241
    .line 242
    if-eqz v1, :cond_5

    .line 243
    .line 244
    iput-object v3, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 245
    .line 246
    iput-object v2, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 247
    const/4 v1, 0x5

    .line 248
    .line 249
    iput v1, p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v3, p1}, Landroidx/compose/foundation/gestures/DragLogic;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 253
    move-result-object v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 254
    .line 255
    if-ne v1, v0, :cond_3

    .line 256
    return-object v0

    .line 257
    :cond_5
    move-object v1, p1

    .line 258
    move-object p1, v3

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    :catch_3
    move-object v1, v4

    .line 262
    .line 263
    :goto_8
    iget-object p1, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->$dragLogic$delegate:Landroidx/compose/runtime/State;

    .line 264
    .line 265
    .line 266
    invoke-static {p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9;->a(Landroidx/compose/runtime/State;)Landroidx/compose/foundation/gestures/DragLogic;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$0:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->L$1:Ljava/lang/Object;

    .line 272
    const/4 v4, 0x6

    .line 273
    .line 274
    iput v4, v3, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$2;->label:I

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v1, v3}, Landroidx/compose/foundation/gestures/DragLogic;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    if-ne p1, v0, :cond_6

    .line 281
    return-object v0

    .line 282
    :cond_6
    move-object p1, v1

    .line 283
    move-object v1, v3

    .line 284
    .line 285
    goto/16 :goto_3

    .line 286
    :cond_7
    move-object v1, v3

    .line 287
    move-object p1, v4

    .line 288
    .line 289
    goto/16 :goto_3

    .line 290
    .line 291
    :cond_8
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 292
    return-object p1

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
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
