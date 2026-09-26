.class public final Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridSpanLayoutProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridSpanLayoutProvider.kt\nandroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1#2:243\n*E\n"
.end annotation


# instance fields
.field private final buckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cachedBucket:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cachedBucketIndex:I

.field private final itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastLineIndex:I

.field private lastLineStartItemIndex:I

.field private lastLineStartKnownSpan:I

.field private previousDefaultSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slotsPerLine:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;)V
    .locals 4
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "itemsSnapshot"

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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 29
    const/4 p1, -0x1

    .line 30
    .line 31
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 32
    .line 33
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 45
    return-void
.end method

.method private final a()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    mul-double/2addr v0, v2

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 11
    int-to-double v2, v2

    .line 12
    div-double/2addr v0, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide v0

    .line 17
    double-to-int v0, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    return v0
.end method

.method private final b(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, p1, :cond_1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->a(I)J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->a(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 37
    move-object p1, v0

    .line 38
    :goto_1
    return-object p1
.end method

.method private final f()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v4, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/k;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 21
    .line 22
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 23
    const/4 v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    return-void
.end method

.method private final h(II)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->a(I)V

    .line 8
    .line 9
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->b(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->g(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J

    .line 16
    move-result-wide p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->d(J)I

    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    .line 23
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, v0}, Lj8/m;->n(III)I

    .line 27
    move-result p1

    .line 28
    return p1
.end method


# virtual methods
.method public final c(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->c()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 12
    mul-int/2addr p1, v0

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, p1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lj8/m;->j(II)I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1}, Lj8/m;->e(II)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->b(I)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 41
    move-result v0

    .line 42
    .line 43
    div-int v0, p1, v0

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    sub-int/2addr v2, v3

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 59
    move-result v2

    .line 60
    mul-int/2addr v2, v0

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->a()I

    .line 72
    move-result v4

    .line 73
    .line 74
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->b()I

    .line 84
    move-result v5

    .line 85
    .line 86
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 87
    .line 88
    if-gt v2, v6, :cond_1

    .line 89
    .line 90
    if-gt v6, p1, :cond_1

    .line 91
    .line 92
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 93
    .line 94
    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    .line 95
    move v2, v6

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_1
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 99
    .line 100
    if-ne v0, v6, :cond_2

    .line 101
    .line 102
    sub-int v6, p1, v2

    .line 103
    .line 104
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 105
    .line 106
    .line 107
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 108
    move-result v7

    .line 109
    .line 110
    if-ge v6, v7, :cond_2

    .line 111
    .line 112
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    check-cast v2, Ljava/lang/Number;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 122
    move-result v4

    .line 123
    move v2, p1

    .line 124
    move v5, v1

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 128
    move-result v6

    .line 129
    .line 130
    rem-int v6, v2, v6

    .line 131
    .line 132
    if-nez v6, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 136
    move-result v6

    .line 137
    .line 138
    sub-int v7, p1, v2

    .line 139
    const/4 v8, 0x2

    .line 140
    .line 141
    if-gt v8, v7, :cond_3

    .line 142
    .line 143
    if-ge v7, v6, :cond_3

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    move v3, v1

    .line 146
    .line 147
    :goto_1
    if-eqz v3, :cond_4

    .line 148
    .line 149
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 150
    .line 151
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    .line 156
    :cond_4
    const-string v0, "Check failed."

    .line 157
    .line 158
    if-gt v2, p1, :cond_e

    .line 159
    .line 160
    :cond_5
    :goto_2
    if-ge v2, p1, :cond_b

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 164
    move-result v6

    .line 165
    .line 166
    if-ge v4, v6, :cond_b

    .line 167
    .line 168
    if-eqz v3, :cond_6

    .line 169
    .line 170
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 171
    .line 172
    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v7

    .line 175
    .line 176
    .line 177
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_6
    move v6, v1

    .line 179
    .line 180
    :goto_3
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 181
    .line 182
    if-ge v6, v7, :cond_9

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 186
    move-result v7

    .line 187
    .line 188
    if-ge v4, v7, :cond_9

    .line 189
    .line 190
    if-nez v5, :cond_7

    .line 191
    .line 192
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 193
    sub-int/2addr v7, v6

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v4, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->h(II)I

    .line 197
    move-result v7

    .line 198
    move v9, v7

    .line 199
    move v7, v5

    .line 200
    move v5, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    move v7, v1

    .line 203
    :goto_4
    add-int/2addr v6, v5

    .line 204
    .line 205
    iget v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 206
    .line 207
    if-le v6, v8, :cond_8

    .line 208
    goto :goto_5

    .line 209
    .line 210
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 211
    move v5, v7

    .line 212
    goto :goto_3

    .line 213
    .line 214
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 218
    move-result v6

    .line 219
    .line 220
    rem-int v6, v2, v6

    .line 221
    .line 222
    if-nez v6, :cond_5

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 226
    move-result v6

    .line 227
    .line 228
    if-ge v4, v6, :cond_5

    .line 229
    .line 230
    .line 231
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 232
    move-result v6

    .line 233
    .line 234
    div-int v6, v2, v6

    .line 235
    .line 236
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 240
    move-result v7

    .line 241
    .line 242
    if-ne v7, v6, :cond_a

    .line 243
    .line 244
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 245
    .line 246
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 247
    .line 248
    .line 249
    invoke-direct {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_2

    .line 254
    .line 255
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 263
    throw p1

    .line 264
    .line 265
    :cond_b
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 266
    .line 267
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 268
    .line 269
    iput v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    .line 270
    .line 271
    new-instance p1, Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    move v0, v1

    .line 276
    move v2, v4

    .line 277
    .line 278
    :goto_6
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 279
    .line 280
    if-ge v0, v3, :cond_d

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 284
    move-result v3

    .line 285
    .line 286
    if-ge v2, v3, :cond_d

    .line 287
    .line 288
    if-nez v5, :cond_c

    .line 289
    .line 290
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 291
    sub-int/2addr v3, v0

    .line 292
    .line 293
    .line 294
    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->h(II)I

    .line 295
    move-result v3

    .line 296
    move v9, v5

    .line 297
    move v5, v3

    .line 298
    move v3, v9

    .line 299
    goto :goto_7

    .line 300
    :cond_c
    move v3, v1

    .line 301
    :goto_7
    add-int/2addr v0, v5

    .line 302
    .line 303
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 304
    .line 305
    if-gt v0, v6, :cond_d

    .line 306
    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 308
    .line 309
    .line 310
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->a(I)J

    .line 311
    move-result-wide v5

    .line 312
    .line 313
    .line 314
    invoke-static {v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->a(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 315
    move-result-object v5

    .line 316
    .line 317
    .line 318
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    move v5, v3

    .line 320
    goto :goto_6

    .line 321
    .line 322
    :cond_d
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 323
    .line 324
    .line 325
    invoke-direct {v0, v4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    .line 326
    return-object v0

    .line 327
    .line 328
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    .line 335
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 336
    throw p1
.end method

.method public final d(I)I
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e()I

    .line 16
    move-result v0

    .line 17
    .line 18
    const-string v2, "Failed requirement."

    .line 19
    .line 20
    if-ge p1, v0, :cond_a

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->c()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 31
    div-int/2addr p1, v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    .line 38
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    .line 42
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;-><init>(I)V

    .line 46
    const/4 v7, 0x3

    .line 47
    const/4 v8, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static/range {v3 .. v8}, Lkotlin/collections/t;->k(Ljava/util/List;IILe8/l;ILjava/lang/Object;)I

    .line 51
    move-result v0

    .line 52
    const/4 v3, 0x2

    .line 53
    .line 54
    if-ltz v0, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    neg-int v0, v0

    .line 57
    sub-int/2addr v0, v3

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 61
    move-result v4

    .line 62
    mul-int/2addr v4, v0

    .line 63
    .line 64
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->a()I

    .line 74
    move-result v0

    .line 75
    .line 76
    if-gt v0, p1, :cond_9

    .line 77
    move v2, v1

    .line 78
    .line 79
    :goto_1
    if-ge v0, p1, :cond_7

    .line 80
    .line 81
    add-int/lit8 v5, v0, 0x1

    .line 82
    .line 83
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 84
    sub-int/2addr v6, v2

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->h(II)I

    .line 88
    move-result v0

    .line 89
    add-int/2addr v2, v0

    .line 90
    .line 91
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 92
    .line 93
    if-ge v2, v6, :cond_3

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_3
    if-ne v2, v6, :cond_4

    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    move v2, v1

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 103
    move v2, v0

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 107
    move-result v0

    .line 108
    .line 109
    rem-int v0, v4, v0

    .line 110
    .line 111
    if-nez v0, :cond_6

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->a()I

    .line 115
    move-result v0

    .line 116
    .line 117
    div-int v0, v4, v0

    .line 118
    .line 119
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v6

    .line 124
    .line 125
    if-lt v0, v6, :cond_6

    .line 126
    .line 127
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 128
    .line 129
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 130
    .line 131
    if-lez v2, :cond_5

    .line 132
    const/4 v7, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v7, v1

    .line 135
    .line 136
    :goto_3
    sub-int v7, v5, v7

    .line 137
    const/4 v8, 0x0

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v7, v1, v3, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/k;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_6
    move v0, v5

    .line 145
    goto :goto_1

    .line 146
    .line 147
    :cond_7
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 148
    sub-int/2addr v0, v2

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->h(II)I

    .line 152
    move-result p1

    .line 153
    add-int/2addr v2, p1

    .line 154
    .line 155
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 156
    .line 157
    if-le v2, p1, :cond_8

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    .line 161
    .line 162
    :cond_8
    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    .line 163
    move-result p1

    .line 164
    return p1

    .line 165
    .line 166
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    throw p1

    .line 175
    .line 176
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    throw p1
.end method

.method public final e()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->f()V

    .line 10
    :cond_0
    return-void
.end method
