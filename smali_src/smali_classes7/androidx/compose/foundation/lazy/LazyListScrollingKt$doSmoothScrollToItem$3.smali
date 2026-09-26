.class final Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListScrolling.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListScrolling.kt\nandroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 LazyListScrolling.kt\nandroidx/compose/foundation/lazy/LazyListScrollingKt\n*L\n1#1,236:1\n1#2:237\n108#3,3:238\n32#3,4:241\n111#3,2:245\n37#3:247\n113#3:248\n39#4,4:249\n39#4,4:253\n*S KotlinDebug\n*F\n+ 1 LazyListScrolling.kt\nandroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3\n*L\n96#1:238,3\n96#1:241,4\n96#1:245,2\n96#1:247\n96#1:248\n106#1:249,4\n202#1:253,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.foundation.lazy.LazyListScrollingKt$doSmoothScrollToItem$3"
    f = "LazyListScrolling.kt"
    l = {
        0x72,
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $scrollOffset:I

.field final synthetic $this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

.field F$0:F

.field F$1:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "II",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method

.method public static final synthetic f(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->h(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z

    move-result p0

    return p0
.end method

.method private static final h(ZLandroidx/compose/foundation/lazy/LazyListState;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 8
    move-result p0

    .line 9
    .line 10
    if-le p0, p2, :cond_0

    .line 11
    :goto_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 16
    move-result p0

    .line 17
    .line 18
    if-ne p0, p2, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->k()I

    .line 22
    move-result p0

    .line 23
    .line 24
    if-le p0, p3, :cond_3

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 29
    move-result p0

    .line 30
    .line 31
    if-ge p0, p2, :cond_2

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 36
    move-result p0

    .line 37
    .line 38
    if-ne p0, p2, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->k()I

    .line 42
    move-result p0

    .line 43
    .line 44
    if-ge p0, p3, :cond_3

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    return v0
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

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/foundation/gestures/ScrollScope;
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
            "Landroidx/compose/foundation/gestures/ScrollScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->g(Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    iget v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v6, :cond_1

    .line 16
    .line 17
    if-ne v0, v4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    goto/16 :goto_b

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0

    .line 31
    .line 32
    :cond_1
    iget v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 33
    .line 34
    iget v7, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 35
    .line 36
    iget v8, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 37
    .line 38
    iget-object v9, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v9, Lkotlin/jvm/internal/n0;

    .line 41
    .line 42
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v10, Lkotlin/jvm/internal/p0;

    .line 45
    .line 46
    iget-object v11, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v11, Lkotlin/jvm/internal/k0;

    .line 49
    .line 50
    iget-object v12, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    move v15, v7

    .line 57
    move v14, v8

    .line 58
    move-object v13, v9

    .line 59
    move-object v9, v12

    .line 60
    move-object v12, v10

    .line 61
    move-object v10, v1

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .line 66
    goto/16 :goto_9

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 72
    move-object v12, v0

    .line 73
    .line 74
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 75
    .line 76
    :try_start_1
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->i()Landroidx/compose/ui/unit/Density;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->c()F

    .line 84
    move-result v7

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v7}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 88
    move-result v0

    .line 89
    .line 90
    iget-object v7, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->i()Landroidx/compose/ui/unit/Density;

    .line 94
    move-result-object v7

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->b()F

    .line 98
    move-result v8

    .line 99
    .line 100
    .line 101
    invoke-interface {v7, v8}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 102
    move-result v7

    .line 103
    .line 104
    new-instance v8, Lkotlin/jvm/internal/k0;

    .line 105
    .line 106
    .line 107
    invoke-direct {v8}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 108
    .line 109
    iput-boolean v6, v8, Lkotlin/jvm/internal/k0;->element:Z

    .line 110
    .line 111
    new-instance v9, Lkotlin/jvm/internal/p0;

    .line 112
    .line 113
    .line 114
    invoke-direct {v9}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v14, 0x0

    .line 117
    .line 118
    const-wide/16 v15, 0x0

    .line 119
    .line 120
    const-wide/16 v17, 0x0

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    const/16 v20, 0x1e

    .line 125
    .line 126
    const/16 v21, 0x0

    .line 127
    .line 128
    .line 129
    invoke-static/range {v13 .. v21}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 130
    move-result-object v10

    .line 131
    .line 132
    iput-object v10, v9, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v10, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 135
    .line 136
    iget v11, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 137
    .line 138
    .line 139
    invoke-static {v10, v11}, Landroidx/compose/foundation/lazy/LazyListScrollingKt;->a(Landroidx/compose/foundation/lazy/LazyListState;I)Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 140
    move-result-object v10

    .line 141
    .line 142
    if-nez v10, :cond_a

    .line 143
    .line 144
    iget v10, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 145
    .line 146
    iget-object v11, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 150
    move-result v11

    .line 151
    .line 152
    if-le v10, v11, :cond_3

    .line 153
    move v10, v6

    .line 154
    goto :goto_0

    .line 155
    :cond_3
    const/4 v10, 0x0

    .line 156
    .line 157
    :goto_0
    new-instance v11, Lkotlin/jvm/internal/n0;

    .line 158
    .line 159
    .line 160
    invoke-direct {v11}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 161
    .line 162
    iput v6, v11, Lkotlin/jvm/internal/n0;->element:I
    :try_end_1
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_5

    .line 163
    move v14, v0

    .line 164
    move v15, v7

    .line 165
    move v0, v10

    .line 166
    move-object v13, v11

    .line 167
    move-object v10, v1

    .line 168
    move-object v11, v8

    .line 169
    .line 170
    move-object/from16 v34, v12

    .line 171
    move-object v12, v9

    .line 172
    .line 173
    move-object/from16 v9, v34

    .line 174
    .line 175
    :goto_1
    :try_start_2
    iget-boolean v7, v11, Lkotlin/jvm/internal/k0;->element:Z

    .line 176
    .line 177
    if-eqz v7, :cond_d

    .line 178
    .line 179
    iget-object v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->m()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 183
    move-result-object v7

    .line 184
    .line 185
    .line 186
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->a()I

    .line 187
    move-result v7

    .line 188
    .line 189
    if-lez v7, :cond_d

    .line 190
    .line 191
    iget-object v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->m()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 195
    move-result-object v7

    .line 196
    .line 197
    .line 198
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->b()Ljava/util/List;

    .line 199
    move-result-object v7

    .line 200
    .line 201
    .line 202
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 203
    move-result v8
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_4

    .line 204
    const/4 v5, 0x0

    .line 205
    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    :goto_2
    if-ge v5, v8, :cond_4

    .line 209
    .line 210
    .line 211
    :try_start_3
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v17

    .line 213
    .line 214
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 215
    .line 216
    .line 217
    invoke-interface/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    .line 218
    move-result v17
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_1

    .line 219
    .line 220
    add-int v16, v16, v17

    .line 221
    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 223
    goto :goto_2

    .line 224
    :catch_1
    move-exception v0

    .line 225
    move-object v12, v9

    .line 226
    move-object v1, v10

    .line 227
    .line 228
    goto/16 :goto_9

    .line 229
    .line 230
    .line 231
    :cond_4
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 232
    move-result v5

    .line 233
    .line 234
    div-int v16, v16, v5

    .line 235
    .line 236
    iget v5, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 237
    .line 238
    iget-object v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->j()I

    .line 242
    move-result v7

    .line 243
    sub-int/2addr v5, v7

    .line 244
    .line 245
    mul-int v5, v5, v16

    .line 246
    int-to-float v5, v5

    .line 247
    .line 248
    iget v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 249
    int-to-float v7, v7

    .line 250
    add-float/2addr v5, v7

    .line 251
    .line 252
    iget-object v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListState;->k()I

    .line 256
    move-result v7

    .line 257
    int-to-float v7, v7

    .line 258
    sub-float/2addr v5, v7

    .line 259
    .line 260
    .line 261
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 262
    move-result v7

    .line 263
    .line 264
    cmpg-float v7, v7, v14

    .line 265
    .line 266
    if-gez v7, :cond_5

    .line 267
    :goto_3
    move v8, v5

    .line 268
    goto :goto_4

    .line 269
    .line 270
    :cond_5
    if-eqz v0, :cond_6

    .line 271
    move v8, v14

    .line 272
    goto :goto_4

    .line 273
    :cond_6
    neg-float v5, v14

    .line 274
    goto :goto_3

    .line 275
    .line 276
    :goto_4
    iget-object v5, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 277
    .line 278
    move-object/from16 v24, v5

    .line 279
    .line 280
    check-cast v24, Landroidx/compose/animation/core/AnimationState;

    .line 281
    .line 282
    const/16 v25, 0x0

    .line 283
    .line 284
    const/16 v26, 0x0

    .line 285
    .line 286
    const-wide/16 v27, 0x0

    .line 287
    .line 288
    const-wide/16 v29, 0x0

    .line 289
    .line 290
    const/16 v31, 0x0

    .line 291
    .line 292
    const/16 v32, 0x1e

    .line 293
    .line 294
    const/16 v33, 0x0

    .line 295
    .line 296
    .line 297
    invoke-static/range {v24 .. v33}, Landroidx/compose/animation/core/AnimationStateKt;->e(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 298
    move-result-object v5

    .line 299
    .line 300
    iput-object v5, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 301
    .line 302
    new-instance v5, Lkotlin/jvm/internal/m0;

    .line 303
    .line 304
    .line 305
    invoke-direct {v5}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 306
    .line 307
    iget-object v7, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 308
    .line 309
    move-object/from16 v19, v7

    .line 310
    .line 311
    check-cast v19, Landroidx/compose/animation/core/AnimationState;

    .line 312
    .line 313
    .line 314
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 315
    move-result-object v20

    .line 316
    .line 317
    const/16 v21, 0x0

    .line 318
    .line 319
    iget-object v7, v12, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v7, Landroidx/compose/animation/core/AnimationState;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Landroidx/compose/animation/core/AnimationState;->e()Ljava/lang/Object;

    .line 325
    move-result-object v7

    .line 326
    .line 327
    check-cast v7, Ljava/lang/Number;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 331
    move-result v7

    .line 332
    .line 333
    cmpg-float v7, v7, v3

    .line 334
    .line 335
    if-nez v7, :cond_7

    .line 336
    .line 337
    const/16 v22, 0x0

    .line 338
    goto :goto_5

    .line 339
    .line 340
    :cond_7
    move/from16 v22, v6

    .line 341
    .line 342
    :goto_5
    new-instance v23, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$2;

    .line 343
    .line 344
    if-eqz v0, :cond_8

    .line 345
    .line 346
    move/from16 v16, v6

    .line 347
    goto :goto_6

    .line 348
    .line 349
    :cond_8
    const/16 v16, 0x0

    .line 350
    .line 351
    :goto_6
    iget v7, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 352
    .line 353
    iget-object v4, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 354
    .line 355
    iget v3, v10, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_4

    .line 356
    .line 357
    move/from16 v17, v7

    .line 358
    .line 359
    move-object/from16 v7, v23

    .line 360
    .line 361
    move-object/from16 p1, v9

    .line 362
    move-object v9, v5

    .line 363
    move-object v5, v10

    .line 364
    .line 365
    move-object/from16 v10, p1

    .line 366
    .line 367
    move-object/from16 v26, v11

    .line 368
    .line 369
    move-object/from16 v27, v12

    .line 370
    .line 371
    move/from16 v12, v16

    .line 372
    .line 373
    move-object/from16 v28, v13

    .line 374
    move v13, v15

    .line 375
    move v6, v14

    .line 376
    .line 377
    move-object/from16 v14, v28

    .line 378
    move v1, v15

    .line 379
    .line 380
    move/from16 v15, v17

    .line 381
    .line 382
    move-object/from16 v16, v4

    .line 383
    .line 384
    move/from16 v17, v3

    .line 385
    .line 386
    move-object/from16 v18, v27

    .line 387
    .line 388
    .line 389
    :try_start_5
    invoke-direct/range {v7 .. v18}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$2;-><init>(FLkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/jvm/internal/k0;ZFLkotlin/jvm/internal/n0;ILandroidx/compose/foundation/lazy/LazyListState;ILkotlin/jvm/internal/p0;)V
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_3

    .line 390
    const/4 v3, 0x2

    .line 391
    const/4 v4, 0x0

    .line 392
    .line 393
    move-object/from16 v12, p1

    .line 394
    .line 395
    :try_start_6
    iput-object v12, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 396
    .line 397
    move-object/from16 v8, v26

    .line 398
    .line 399
    iput-object v8, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 400
    .line 401
    move-object/from16 v9, v27

    .line 402
    .line 403
    iput-object v9, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 404
    .line 405
    move-object/from16 v11, v28

    .line 406
    .line 407
    iput-object v11, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 408
    .line 409
    iput v6, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$0:F

    .line 410
    .line 411
    iput v1, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->F$1:F

    .line 412
    .line 413
    iput v0, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->I$0:I

    .line 414
    const/4 v7, 0x1

    .line 415
    .line 416
    iput v7, v5, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I

    .line 417
    .line 418
    move-object/from16 v16, v19

    .line 419
    .line 420
    move-object/from16 v17, v20

    .line 421
    .line 422
    move-object/from16 v18, v21

    .line 423
    .line 424
    move/from16 v19, v22

    .line 425
    .line 426
    move-object/from16 v20, v23

    .line 427
    .line 428
    move-object/from16 v21, v5

    .line 429
    .line 430
    move/from16 v22, v3

    .line 431
    .line 432
    move-object/from16 v23, v4

    .line 433
    .line 434
    .line 435
    invoke-static/range {v16 .. v23}, Landroidx/compose/animation/core/SuspendAnimationKt;->k(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-result-object v3
    :try_end_6
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_6 .. :try_end_6} :catch_2

    .line 437
    .line 438
    if-ne v3, v2, :cond_9

    .line 439
    return-object v2

    .line 440
    :cond_9
    move v15, v1

    .line 441
    move-object v10, v5

    .line 442
    move v14, v6

    .line 443
    move-object v13, v11

    .line 444
    move-object v11, v8

    .line 445
    .line 446
    move-object/from16 v34, v12

    .line 447
    move-object v12, v9

    .line 448
    .line 449
    move-object/from16 v9, v34

    .line 450
    .line 451
    :goto_7
    :try_start_7
    iget v1, v13, Lkotlin/jvm/internal/n0;->element:I

    .line 452
    const/4 v3, 0x1

    .line 453
    add-int/2addr v1, v3

    .line 454
    .line 455
    iput v1, v13, Lkotlin/jvm/internal/n0;->element:I
    :try_end_7
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_7 .. :try_end_7} :catch_1

    .line 456
    .line 457
    move-object/from16 v1, p0

    .line 458
    const/4 v3, 0x0

    .line 459
    const/4 v4, 0x2

    .line 460
    const/4 v6, 0x1

    .line 461
    .line 462
    goto/16 :goto_1

    .line 463
    :catch_2
    move-exception v0

    .line 464
    :goto_8
    move-object v1, v5

    .line 465
    goto :goto_9

    .line 466
    :catch_3
    move-exception v0

    .line 467
    .line 468
    move-object/from16 v12, p1

    .line 469
    goto :goto_8

    .line 470
    :catch_4
    move-exception v0

    .line 471
    move-object v12, v9

    .line 472
    move-object v5, v10

    .line 473
    goto :goto_8

    .line 474
    :catch_5
    move-exception v0

    .line 475
    .line 476
    move-object/from16 v1, p0

    .line 477
    goto :goto_9

    .line 478
    .line 479
    :cond_a
    :try_start_8
    new-instance v0, Landroidx/compose/foundation/lazy/ItemFoundInScroll;

    .line 480
    .line 481
    iget-object v1, v9, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v1, Landroidx/compose/animation/core/AnimationState;

    .line 484
    .line 485
    .line 486
    invoke-direct {v0, v10, v1}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;-><init>(Landroidx/compose/foundation/lazy/LazyListItemInfo;Landroidx/compose/animation/core/AnimationState;)V

    .line 487
    throw v0
    :try_end_8
    .catch Landroidx/compose/foundation/lazy/ItemFoundInScroll; {:try_start_8 .. :try_end_8} :catch_5

    .line 488
    .line 489
    .line 490
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->b()Landroidx/compose/animation/core/AnimationState;

    .line 491
    move-result-object v13

    .line 492
    const/4 v14, 0x0

    .line 493
    const/4 v15, 0x0

    .line 494
    .line 495
    const-wide/16 v16, 0x0

    .line 496
    .line 497
    const-wide/16 v18, 0x0

    .line 498
    .line 499
    const/16 v20, 0x0

    .line 500
    .line 501
    const/16 v21, 0x1e

    .line 502
    .line 503
    const/16 v22, 0x0

    .line 504
    .line 505
    .line 506
    invoke-static/range {v13 .. v22}, Landroidx/compose/animation/core/AnimationStateKt;->e(Landroidx/compose/animation/core/AnimationState;FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 507
    move-result-object v3

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemFoundInScroll;->a()Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 511
    move-result-object v0

    .line 512
    .line 513
    .line 514
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->a()I

    .line 515
    move-result v0

    .line 516
    .line 517
    iget v4, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 518
    add-int/2addr v0, v4

    .line 519
    int-to-float v0, v0

    .line 520
    .line 521
    new-instance v4, Lkotlin/jvm/internal/m0;

    .line 522
    .line 523
    .line 524
    invoke-direct {v4}, Lkotlin/jvm/internal/m0;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 528
    move-result-object v5

    .line 529
    const/4 v6, 0x0

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3}, Landroidx/compose/animation/core/AnimationState;->e()Ljava/lang/Object;

    .line 533
    move-result-object v7

    .line 534
    .line 535
    check-cast v7, Ljava/lang/Number;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 539
    move-result v7

    .line 540
    const/4 v8, 0x0

    .line 541
    .line 542
    cmpg-float v7, v7, v8

    .line 543
    .line 544
    if-nez v7, :cond_b

    .line 545
    const/4 v7, 0x1

    .line 546
    .line 547
    const/16 v29, 0x1

    .line 548
    goto :goto_a

    .line 549
    :cond_b
    const/4 v7, 0x1

    .line 550
    .line 551
    const/16 v29, 0x0

    .line 552
    .line 553
    :goto_a
    xor-int/lit8 v7, v29, 0x1

    .line 554
    .line 555
    new-instance v8, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$4;

    .line 556
    .line 557
    .line 558
    invoke-direct {v8, v0, v4, v12}, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3$4;-><init>(FLkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/ScrollScope;)V

    .line 559
    const/4 v9, 0x2

    .line 560
    const/4 v10, 0x0

    .line 561
    const/4 v0, 0x0

    .line 562
    .line 563
    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$0:Ljava/lang/Object;

    .line 564
    .line 565
    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$1:Ljava/lang/Object;

    .line 566
    .line 567
    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$2:Ljava/lang/Object;

    .line 568
    .line 569
    iput-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->L$3:Ljava/lang/Object;

    .line 570
    const/4 v4, 0x2

    .line 571
    .line 572
    iput v4, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->label:I

    .line 573
    move-object v4, v5

    .line 574
    move-object v5, v6

    .line 575
    move v6, v7

    .line 576
    move-object v7, v8

    .line 577
    move-object v8, v1

    .line 578
    .line 579
    .line 580
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->k(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-result-object v0

    .line 582
    .line 583
    if-ne v0, v2, :cond_c

    .line 584
    return-object v2

    .line 585
    .line 586
    :cond_c
    :goto_b
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$this_doSmoothScrollToItem:Landroidx/compose/foundation/lazy/LazyListState;

    .line 587
    .line 588
    iget v2, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$index:I

    .line 589
    .line 590
    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollingKt$doSmoothScrollToItem$3;->$scrollOffset:I

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/lazy/LazyListState;->B(II)V

    .line 594
    .line 595
    :cond_d
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 596
    return-object v0
.end method
