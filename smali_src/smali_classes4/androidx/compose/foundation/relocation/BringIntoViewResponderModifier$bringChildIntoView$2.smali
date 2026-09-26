.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.relocation.BringIntoViewResponderModifier$bringChildIntoView$2"
    f = "BringIntoViewResponder.kt"
    l = {
        0xd6,
        0xdf,
        0xe6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field final synthetic $rect:Landroidx/compose/ui/geometry/Rect;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

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

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    if-eq v1, v4, :cond_2

    .line 15
    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lw7/u;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p1

    .line 39
    .line 40
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lw7/u;

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lw7/u;

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    move-object v0, v3

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lw7/u;

    .line 64
    .line 65
    .line 66
    :try_start_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewChildModifier;->b()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 86
    return-object p1

    .line 87
    .line 88
    :cond_4
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 89
    .line 90
    .line 91
    invoke-interface {v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->Q()Z

    .line 92
    move-result v6

    .line 93
    .line 94
    if-nez v6, :cond_5

    .line 95
    .line 96
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 97
    return-object p1

    .line 98
    .line 99
    :cond_5
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$childCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 100
    .line 101
    iget-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->$rect:Landroidx/compose/ui/geometry/Rect;

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v6, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lkotlinx/coroutines/f2;->l(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    new-instance v7, Lw7/u;

    .line 116
    .line 117
    .line 118
    invoke-direct {v7, v6, p1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    iget-object v8, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 127
    .line 128
    .line 129
    invoke-static {v8, v7}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->i(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 130
    .line 131
    if-eqz p1, :cond_c

    .line 132
    .line 133
    .line 134
    :try_start_3
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 135
    move-result-object v8

    .line 136
    .line 137
    check-cast v8, Landroidx/compose/ui/geometry/Rect;

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 141
    move-result v6

    .line 142
    .line 143
    if-nez v6, :cond_6

    .line 144
    goto :goto_2

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    check-cast v4, Lkotlinx/coroutines/b2;

    .line 151
    .line 152
    iput-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 157
    .line 158
    iput v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 159
    .line 160
    .line 161
    invoke-interface {v4, p0}, Lkotlinx/coroutines/b2;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 162
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    .line 164
    if-ne v3, v0, :cond_7

    .line 165
    return-object v0

    .line 166
    :cond_7
    move-object v4, v1

    .line 167
    move-object v3, v7

    .line 168
    move-object v1, p1

    .line 169
    .line 170
    :goto_0
    :try_start_4
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->f(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    if-ne p1, v1, :cond_9

    .line 177
    .line 178
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 179
    .line 180
    iput-object v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$1:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$2:Ljava/lang/Object;

    .line 185
    .line 186
    iput v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v3, v4, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->d(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 190
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    .line 192
    if-ne p1, v0, :cond_8

    .line 193
    return-object v0

    .line 194
    :cond_8
    move-object v0, v3

    .line 195
    :goto_1
    move-object v3, v0

    .line 196
    .line 197
    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->f(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    if-ne p1, v0, :cond_a

    .line 210
    .line 211
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 212
    .line 213
    .line 214
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->h(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 215
    .line 216
    :cond_a
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    if-ne p1, v3, :cond_b

    .line 223
    .line 224
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 225
    .line 226
    .line 227
    invoke-static {p1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->i(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 228
    .line 229
    :cond_b
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 230
    return-object p1

    .line 231
    :catchall_2
    move-exception p1

    .line 232
    move-object v0, v7

    .line 233
    goto :goto_4

    .line 234
    .line 235
    :cond_c
    :goto_2
    :try_start_5
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 236
    .line 237
    iput-object v7, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    iput v4, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->label:I

    .line 240
    .line 241
    .line 242
    invoke-static {p1, v7, v1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->d(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 243
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 244
    .line 245
    if-ne p1, v0, :cond_d

    .line 246
    return-object v0

    .line 247
    :cond_d
    move-object v0, v7

    .line 248
    .line 249
    :goto_3
    :try_start_6
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    .line 251
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 252
    .line 253
    .line 254
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->f(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 258
    .line 259
    .line 260
    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 261
    move-result-object v2

    .line 262
    .line 263
    if-ne v1, v2, :cond_e

    .line 264
    .line 265
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 266
    .line 267
    .line 268
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->h(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 269
    .line 270
    :cond_e
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 271
    .line 272
    .line 273
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 274
    move-result-object v1

    .line 275
    .line 276
    if-ne v1, v0, :cond_f

    .line 277
    .line 278
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->i(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 282
    :cond_f
    return-object p1

    .line 283
    .line 284
    :goto_4
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->f(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 288
    move-result-object v1

    .line 289
    .line 290
    iget-object v2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 291
    .line 292
    .line 293
    invoke-static {v2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    if-ne v1, v2, :cond_10

    .line 297
    .line 298
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 299
    .line 300
    .line 301
    invoke-static {v1, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->h(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 302
    .line 303
    :cond_10
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 304
    .line 305
    .line 306
    invoke-static {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->g(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;)Lw7/u;

    .line 307
    move-result-object v1

    .line 308
    .line 309
    if-ne v1, v0, :cond_11

    .line 310
    .line 311
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier$bringChildIntoView$2;->this$0:Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;

    .line 312
    .line 313
    .line 314
    invoke-static {v0, v5}, Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;->i(Landroidx/compose/foundation/relocation/BringIntoViewResponderModifier;Lw7/u;)V

    .line 315
    :cond_11
    throw p1
.end method
