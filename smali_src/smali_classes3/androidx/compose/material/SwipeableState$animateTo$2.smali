.class final Landroidx/compose/material/SwipeableState$animateTo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeableState;->j(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h<",
        "Ljava/util/Map<",
        "Ljava/lang/Float;",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState$animateTo$2\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,890:1\n463#2,7:891\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material/SwipeableState$animateTo$2\n*L\n340#1:891,7\n*E\n"
.end annotation


# instance fields
.field final synthetic $anim:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/material/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/material/SwipeableState;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/material/SwipeableState<",
            "TT;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    iput-object p3, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
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
    .line 2
    instance-of v0, p2, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;-><init>(Landroidx/compose/material/SwipeableState$animateTo$2;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    .line 33
    .line 34
    const/high16 v3, 0x3f000000    # 0.5f

    .line 35
    const/4 v4, 0x1

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/util/Map;

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroidx/compose/material/SwipeableState$animateTo$2;

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    :try_start_1
    iget-object p2, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$targetValue:Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2}, Landroidx/compose/material/SwipeableKt;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    if-eqz p2, :cond_7

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 79
    move-result p2

    .line 80
    .line 81
    iget-object v5, p0, Landroidx/compose/material/SwipeableState$animateTo$2;->$anim:Landroidx/compose/animation/core/AnimationSpec;

    .line 82
    .line 83
    iput-object p0, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object p1, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    iput v4, v0, Landroidx/compose/material/SwipeableState$animateTo$2$emit$1;->label:I

    .line 88
    .line 89
    .line 90
    invoke-static {v2, p2, v5, v0}, Landroidx/compose/material/SwipeableState;->a(Landroidx/compose/material/SwipeableState;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 91
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    if-ne p2, v1, :cond_3

    .line 94
    return-object v1

    .line 95
    :cond_3
    move-object v0, p0

    .line 96
    .line 97
    :goto_1
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Landroidx/compose/material/SwipeableState;->b(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 101
    move-result-object p2

    .line 102
    .line 103
    .line 104
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    check-cast p2, Ljava/lang/Number;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 111
    move-result p2

    .line 112
    .line 113
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    check-cast v4, Ljava/lang/Number;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 146
    move-result v4

    .line 147
    sub-float/2addr v4, p2

    .line 148
    .line 149
    .line 150
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 151
    move-result v4

    .line 152
    .line 153
    cmpg-float v4, v4, v3

    .line 154
    .line 155
    if-gez v4, :cond_4

    .line 156
    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    goto :goto_2

    .line 168
    .line 169
    .line 170
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    check-cast p1, Ljava/lang/Iterable;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lkotlin/collections/t;->k0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    if-nez p1, :cond_6

    .line 180
    .line 181
    iget-object p1, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    :cond_6
    iget-object p2, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 188
    .line 189
    .line 190
    invoke-static {p2, p1}, Landroidx/compose/material/SwipeableState;->g(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V

    .line 191
    .line 192
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 193
    return-object p1

    .line 194
    :catchall_1
    move-exception p2

    .line 195
    move-object v0, p0

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_7
    :try_start_2
    const-string p2, "The target value must have an associated anchor."

    .line 199
    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 205
    .line 206
    .line 207
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    .line 210
    :goto_3
    iget-object v1, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Landroidx/compose/material/SwipeableState;->b(Landroidx/compose/material/SwipeableState;)Landroidx/compose/runtime/MutableState;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    check-cast v1, Ljava/lang/Number;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 224
    move-result v1

    .line 225
    .line 226
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 227
    .line 228
    .line 229
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    move-result v4

    .line 242
    .line 243
    if-eqz v4, :cond_9

    .line 244
    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    move-result-object v4

    .line 248
    .line 249
    check-cast v4, Ljava/util/Map$Entry;

    .line 250
    .line 251
    .line 252
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 253
    move-result-object v5

    .line 254
    .line 255
    check-cast v5, Ljava/lang/Number;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 259
    move-result v5

    .line 260
    sub-float/2addr v5, v1

    .line 261
    .line 262
    .line 263
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 264
    move-result v5

    .line 265
    .line 266
    cmpg-float v5, v5, v3

    .line 267
    .line 268
    if-gez v5, :cond_8

    .line 269
    .line 270
    .line 271
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 272
    move-result-object v5

    .line 273
    .line 274
    .line 275
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 276
    move-result-object v4

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    goto :goto_4

    .line 281
    .line 282
    .line 283
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 284
    move-result-object p1

    .line 285
    .line 286
    check-cast p1, Ljava/lang/Iterable;

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Lkotlin/collections/t;->k0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 290
    move-result-object p1

    .line 291
    .line 292
    if-nez p1, :cond_a

    .line 293
    .line 294
    iget-object p1, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 298
    move-result-object p1

    .line 299
    .line 300
    :cond_a
    iget-object v0, v0, Landroidx/compose/material/SwipeableState$animateTo$2;->this$0:Landroidx/compose/material/SwipeableState;

    .line 301
    .line 302
    .line 303
    invoke-static {v0, p1}, Landroidx/compose/material/SwipeableState;->g(Landroidx/compose/material/SwipeableState;Ljava/lang/Object;)V

    .line 304
    throw p2
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeableState$animateTo$2;->e(Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
