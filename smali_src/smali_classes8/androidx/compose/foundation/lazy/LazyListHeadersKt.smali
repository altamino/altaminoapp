.class public final Landroidx/compose/foundation/lazy/LazyListHeadersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListHeaders.kt\nandroidx/compose/foundation/lazy/LazyListHeadersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,94:1\n1#2:95\n49#3,6:96\n*S KotlinDebug\n*F\n+ 1 LazyListHeaders.kt\nandroidx/compose/foundation/lazy/LazyListHeadersKt\n*L\n57#1:96,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;
    .locals 15
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
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
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III)",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "composedVisibleItems"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v4, "itemProvider"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v4, "headerIndexes"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 36
    move-result v5

    .line 37
    const/4 v6, -0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    move v9, v6

    .line 40
    move v10, v9

    .line 41
    move v8, v7

    .line 42
    .line 43
    :goto_0
    if-ge v8, v5, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v11

    .line 48
    .line 49
    check-cast v11, Ljava/lang/Number;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 53
    move-result v11

    .line 54
    .line 55
    if-gt v11, v4, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    check-cast v9, Ljava/lang/Number;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 65
    move-result v9

    .line 66
    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    if-ltz v8, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-static/range {p2 .. p2}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 73
    move-result v10

    .line 74
    .line 75
    if-gt v8, v10, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v10

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v10

    .line 85
    .line 86
    :goto_1
    check-cast v10, Ljava/lang/Number;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 90
    move-result v10

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 95
    move-result v2

    .line 96
    .line 97
    const/high16 v4, -0x80000000

    .line 98
    move v8, v4

    .line 99
    move v11, v8

    .line 100
    move v12, v6

    .line 101
    move v5, v7

    .line 102
    .line 103
    :goto_2
    if-ge v5, v2, :cond_4

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v13

    .line 108
    .line 109
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 113
    move-result v14

    .line 114
    .line 115
    if-ne v14, v9, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    .line 119
    move-result v8

    .line 120
    move v12, v5

    .line 121
    goto :goto_3

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 125
    move-result v14

    .line 126
    .line 127
    if-ne v14, v10, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->a()I

    .line 131
    move-result v11

    .line 132
    .line 133
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_4
    if-ne v9, v6, :cond_5

    .line 137
    const/4 v0, 0x0

    .line 138
    return-object v0

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-static {v9}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    .line 142
    move-result v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    if-eq v8, v4, :cond_6

    .line 149
    neg-int v2, v3

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 153
    move-result v2

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    neg-int v2, v3

    .line 156
    .line 157
    :goto_4
    if-eq v11, v4, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->d()I

    .line 161
    move-result v3

    .line 162
    sub-int/2addr v11, v3

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 166
    move-result v2

    .line 167
    .line 168
    :cond_7
    move/from16 v3, p4

    .line 169
    .line 170
    move/from16 v4, p5

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    if-eq v12, v6, :cond_8

    .line 177
    .line 178
    .line 179
    invoke-interface {p0, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    goto :goto_5

    .line 181
    .line 182
    .line 183
    :cond_8
    invoke-interface {p0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    :goto_5
    return-object v1
.end method
