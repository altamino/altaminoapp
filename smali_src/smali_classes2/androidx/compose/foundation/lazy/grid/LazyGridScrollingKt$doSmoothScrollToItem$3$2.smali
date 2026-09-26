.class final Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/animation/core/AnimationScope<",
        "Ljava/lang/Float;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        ">;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridScrolling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridScrolling.kt\nandroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2\n+ 2 LazyGridScrolling.kt\nandroidx/compose/foundation/lazy/grid/LazyGridScrollingKt\n*L\n1#1,299:1\n41#2,4:300\n41#2,4:304\n41#2,4:308\n41#2,4:312\n41#2,4:316\n41#2,4:320\n41#2,4:324\n41#2,4:328\n41#2,4:332\n*S KotlinDebug\n*F\n+ 1 LazyGridScrolling.kt\nandroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2\n*L\n143#1:300,4\n150#1:304,4\n153#1:308,4\n161#1:312,4\n166#1:316,4\n178#1:320,4\n187#1:324,4\n197#1:328,4\n203#1:332,4\n*E\n"
.end annotation


# instance fields
.field final synthetic $$this$scroll:Landroidx/compose/foundation/gestures/ScrollScope;

.field final synthetic $anim:Lkotlin/jvm/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $boundDistancePx:F

.field final synthetic $forward:Z

.field final synthetic $index:I

.field final synthetic $loop:Lkotlin/jvm/internal/k0;

.field final synthetic $loops:Lkotlin/jvm/internal/n0;

.field final synthetic $prevValue:Lkotlin/jvm/internal/m0;

.field final synthetic $scrollOffset:I

.field final synthetic $target:F

.field final synthetic $this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method constructor <init>(FLkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/k0;ZFLkotlin/jvm/internal/n0;ILandroidx/compose/foundation/lazy/grid/LazyGridState;ILkotlin/jvm/internal/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/internal/m0;",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "Lkotlin/jvm/internal/k0;",
            "ZF",
            "Lkotlin/jvm/internal/n0;",
            "I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "I",
            "Lkotlin/jvm/internal/p0<",
            "Landroidx/compose/animation/core/AnimationState<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;>;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$target:F

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$prevValue:Lkotlin/jvm/internal/m0;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$$this$scroll:Landroidx/compose/foundation/gestures/ScrollScope;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loop:Lkotlin/jvm/internal/k0;

    iput-boolean p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$forward:Z

    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$boundDistancePx:F

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loops:Lkotlin/jvm/internal/n0;

    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$scrollOffset:I

    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$anim:Lkotlin/jvm/internal/p0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 8
    .param p1    # Landroidx/compose/animation/core/AnimationScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$animateTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->b(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_7

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$target:F

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    cmpl-float v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Number;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 33
    move-result v0

    .line 34
    .line 35
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$target:F

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v2}, Lj8/m;->i(FF)F

    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Number;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 50
    move-result v0

    .line 51
    .line 52
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$target:F

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v2}, Lj8/m;->d(FF)F

    .line 56
    move-result v0

    .line 57
    .line 58
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$prevValue:Lkotlin/jvm/internal/m0;

    .line 59
    .line 60
    iget v2, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 61
    sub-float/2addr v0, v2

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$$this$scroll:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v0}, Landroidx/compose/foundation/gestures/ScrollScope;->a(F)F

    .line 67
    move-result v2

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 70
    .line 71
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt;->b(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$forward:Z

    .line 82
    .line 83
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 84
    .line 85
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 86
    .line 87
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$scrollOffset:I

    .line 88
    .line 89
    .line 90
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->f(ZLandroidx/compose/foundation/lazy/grid/LazyGridState;II)Z

    .line 91
    move-result v4

    .line 92
    .line 93
    if-nez v4, :cond_6

    .line 94
    .line 95
    cmpg-float v2, v0, v2

    .line 96
    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$prevValue:Lkotlin/jvm/internal/m0;

    .line 100
    .line 101
    iget v4, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 102
    add-float/2addr v4, v0

    .line 103
    .line 104
    iput v4, v2, Lkotlin/jvm/internal/m0;->element:F

    .line 105
    .line 106
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$forward:Z

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Number;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 118
    move-result v0

    .line 119
    .line 120
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$boundDistancePx:F

    .line 121
    .line 122
    cmpl-float v0, v0, v2

    .line 123
    .line 124
    if-lez v0, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Ljava/lang/Number;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 138
    move-result v0

    .line 139
    .line 140
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$boundDistancePx:F

    .line 141
    neg-float v2, v2

    .line 142
    .line 143
    cmpg-float v0, v0, v2

    .line 144
    .line 145
    if-gez v0, :cond_3

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 149
    .line 150
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$forward:Z

    .line 151
    const/4 v2, 0x2

    .line 152
    .line 153
    const/16 v4, 0xc8

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loops:Lkotlin/jvm/internal/n0;

    .line 158
    .line 159
    iget v0, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 160
    .line 161
    if-lt v0, v2, :cond_6

    .line 162
    .line 163
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 164
    .line 165
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->b()Ljava/util/List;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    .line 176
    invoke-static {v2}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 180
    .line 181
    .line 182
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    .line 183
    move-result v2

    .line 184
    sub-int/2addr v0, v2

    .line 185
    .line 186
    if-le v0, v4, :cond_6

    .line 187
    .line 188
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 189
    .line 190
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 191
    sub-int/2addr v2, v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->E(II)V

    .line 195
    goto :goto_2

    .line 196
    .line 197
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loops:Lkotlin/jvm/internal/n0;

    .line 198
    .line 199
    iget v0, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 200
    .line 201
    if-lt v0, v2, :cond_6

    .line 202
    .line 203
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    .line 210
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->b()Ljava/util/List;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 218
    .line 219
    .line 220
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    .line 221
    move-result v0

    .line 222
    .line 223
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 224
    sub-int/2addr v0, v2

    .line 225
    .line 226
    const/16 v5, 0x64

    .line 227
    .line 228
    if-le v0, v5, :cond_6

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 231
    add-int/2addr v2, v4

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->E(II)V

    .line 235
    goto :goto_2

    .line 236
    .line 237
    .line 238
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 239
    .line 240
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loop:Lkotlin/jvm/internal/k0;

    .line 241
    .line 242
    iput-boolean v1, p1, Lkotlin/jvm/internal/k0;->element:Z

    .line 243
    return-void

    .line 244
    :cond_6
    :goto_2
    move-object v0, v3

    .line 245
    .line 246
    :cond_7
    iget-boolean v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$forward:Z

    .line 247
    .line 248
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 249
    .line 250
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 251
    .line 252
    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$scrollOffset:I

    .line 253
    .line 254
    .line 255
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3;->f(ZLandroidx/compose/foundation/lazy/grid/LazyGridState;II)Z

    .line 256
    move-result v2

    .line 257
    .line 258
    if-eqz v2, :cond_8

    .line 259
    .line 260
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 261
    .line 262
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$index:I

    .line 263
    .line 264
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$scrollOffset:I

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->E(II)V

    .line 268
    .line 269
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$loop:Lkotlin/jvm/internal/k0;

    .line 270
    .line 271
    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 275
    return-void

    .line 276
    .line 277
    :cond_8
    if-nez v0, :cond_9

    .line 278
    return-void

    .line 279
    .line 280
    :cond_9
    new-instance p1, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;

    .line 281
    .line 282
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->$anim:Lkotlin/jvm/internal/p0;

    .line 283
    .line 284
    iget-object v1, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 287
    .line 288
    .line 289
    invoke-direct {p1, v0, v1}, Landroidx/compose/foundation/lazy/grid/ItemFoundInScroll;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/animation/core/AnimationState;)V

    .line 290
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollingKt$doSmoothScrollToItem$3$2;->a(Landroidx/compose/animation/core/AnimationScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
