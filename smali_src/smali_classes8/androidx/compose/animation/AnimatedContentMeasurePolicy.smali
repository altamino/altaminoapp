.class final Landroidx/compose/animation/AnimatedContentMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentMeasurePolicy\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,737:1\n49#2,6:738\n49#2,6:744\n13808#3,14:750\n13808#3,14:764\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentMeasurePolicy\n*L\n687#1:738,6\n694#1:744,6\n700#1:750,14\n701#1:764,14\n*E\n"
.end annotation


# instance fields
.field private final rootScope:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentScope;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/AnimatedContentScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "rootScope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-wide/from16 v2, p3

    .line 6
    .line 7
    const-string v4, "$this$measure"

    .line 8
    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    .line 12
    invoke-static {v5, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v4, "measurables"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 21
    move-result v4

    .line 22
    .line 23
    new-array v6, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 27
    move-result v7

    .line 28
    const/4 v8, 0x0

    .line 29
    move v9, v8

    .line 30
    :goto_0
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x1

    .line 32
    .line 33
    if-ge v9, v7, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v12

    .line 38
    .line 39
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 40
    .line 41
    .line 42
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    .line 43
    move-result-object v13

    .line 44
    .line 45
    instance-of v14, v13, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 46
    .line 47
    if-eqz v14, :cond_0

    .line 48
    move-object v10, v13

    .line 49
    .line 50
    check-cast v10, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 51
    .line 52
    :cond_0
    if-eqz v10, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10}, Landroidx/compose/animation/AnimatedContentScope$ChildData;->a()Z

    .line 56
    move-result v10

    .line 57
    .line 58
    if-ne v10, v11, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    aput-object v10, v6, v9

    .line 65
    .line 66
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 71
    move-result v7

    .line 72
    move v9, v8

    .line 73
    .line 74
    :goto_1
    if-ge v9, v7, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v12

    .line 79
    .line 80
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 81
    .line 82
    aget-object v13, v6, v9

    .line 83
    .line 84
    if-nez v13, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 88
    move-result-object v12

    .line 89
    .line 90
    aput-object v12, v6, v9

    .line 91
    .line 92
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_4
    if-nez v4, :cond_5

    .line 96
    move-object v1, v10

    .line 97
    goto :goto_5

    .line 98
    .line 99
    :cond_5
    aget-object v1, v6, v8

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 103
    move-result v2

    .line 104
    .line 105
    if-nez v2, :cond_6

    .line 106
    goto :goto_5

    .line 107
    .line 108
    :cond_6
    if-eqz v1, :cond_7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 112
    move-result v3

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    move v3, v8

    .line 115
    .line 116
    :goto_2
    if-gt v11, v2, :cond_a

    .line 117
    move v7, v11

    .line 118
    .line 119
    :goto_3
    aget-object v9, v6, v7

    .line 120
    .line 121
    if-eqz v9, :cond_8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 125
    move-result v12

    .line 126
    goto :goto_4

    .line 127
    :cond_8
    move v12, v8

    .line 128
    .line 129
    :goto_4
    if-ge v3, v12, :cond_9

    .line 130
    move-object v1, v9

    .line 131
    move v3, v12

    .line 132
    .line 133
    :cond_9
    if-eq v7, v2, :cond_a

    .line 134
    .line 135
    add-int/lit8 v7, v7, 0x1

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 142
    move-result v1

    .line 143
    goto :goto_6

    .line 144
    :cond_b
    move v1, v8

    .line 145
    .line 146
    :goto_6
    if-nez v4, :cond_c

    .line 147
    goto :goto_a

    .line 148
    .line 149
    :cond_c
    aget-object v10, v6, v8

    .line 150
    .line 151
    .line 152
    invoke-static {v6}, Lkotlin/collections/l;->R([Ljava/lang/Object;)I

    .line 153
    move-result v2

    .line 154
    .line 155
    if-nez v2, :cond_d

    .line 156
    goto :goto_a

    .line 157
    .line 158
    :cond_d
    if-eqz v10, :cond_e

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 162
    move-result v3

    .line 163
    goto :goto_7

    .line 164
    :cond_e
    move v3, v8

    .line 165
    .line 166
    :goto_7
    if-gt v11, v2, :cond_11

    .line 167
    .line 168
    :goto_8
    aget-object v4, v6, v11

    .line 169
    .line 170
    if-eqz v4, :cond_f

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 174
    move-result v7

    .line 175
    goto :goto_9

    .line 176
    :cond_f
    move v7, v8

    .line 177
    .line 178
    :goto_9
    if-ge v3, v7, :cond_10

    .line 179
    move-object v10, v4

    .line 180
    move v3, v7

    .line 181
    .line 182
    :cond_10
    if-eq v11, v2, :cond_11

    .line 183
    .line 184
    add-int/lit8 v11, v11, 0x1

    .line 185
    goto :goto_8

    .line 186
    .line 187
    :cond_11
    :goto_a
    if-eqz v10, :cond_12

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 191
    move-result v2

    .line 192
    move v7, v2

    .line 193
    goto :goto_b

    .line 194
    :cond_12
    move v7, v8

    .line 195
    .line 196
    :goto_b
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 197
    .line 198
    .line 199
    invoke-static {v1, v7}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 200
    move-result-wide v3

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/AnimatedContentScope;->r(J)V

    .line 204
    const/4 v8, 0x0

    .line 205
    .line 206
    new-instance v9, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;

    .line 207
    .line 208
    .line 209
    invoke-direct {v9, v6, p0, v1, v7}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;-><init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V

    .line 210
    const/4 v10, 0x4

    .line 211
    const/4 v11, 0x0

    .line 212
    .line 213
    move-object/from16 v5, p1

    .line 214
    move v6, v1

    .line 215
    .line 216
    .line 217
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 218
    move-result-object v1

    .line 219
    return-object v1
.end method

.method public b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicHeight$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicHeight$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/sequences/j;->u(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/sequences/j;->w(Lkotlin/sequences/g;)Ljava/lang/Comparable;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicWidth$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicWidth$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/sequences/j;->u(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/sequences/j;->w(Lkotlin/sequences/g;)Ljava/lang/Comparable;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicHeight$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicHeight$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/sequences/j;->u(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/sequences/j;->w(Lkotlin/sequences/g;)Ljava/lang/Comparable;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lkotlin/collections/t;->Y(Ljava/lang/Iterable;)Lkotlin/sequences/g;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicWidth$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicWidth$1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/sequences/j;->u(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/sequences/j;->w(Lkotlin/sequences/g;)Ljava/lang/Comparable;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public final f()Landroidx/compose/animation/AnimatedContentScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    return-object v0
.end method
