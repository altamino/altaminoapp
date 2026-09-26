.class public final Landroidx/compose/ui/node/LayoutNodeAlignmentLines;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNodeAlignmentLines.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNodeAlignmentLines.kt\nandroidx/compose/ui/node/LayoutNodeAlignmentLines\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n460#2,7:181\n467#2,4:192\n211#3,2:188\n1849#4,2:190\n*S KotlinDebug\n*F\n+ 1 LayoutNodeAlignmentLines.kt\nandroidx/compose/ui/node/LayoutNodeAlignmentLines\n*L\n145#1:181,7\n145#1:192,4\n153#1:188,2\n160#1:190,2\n*E\n"
.end annotation


# instance fields
.field private final alignmentLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dirty:Z

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousUsedDuringParentLayout:Z

.field private queryOwner:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private usedByModifierLayout:Z

.field private usedByModifierMeasurement:Z

.field private usedDuringParentLayout:Z

.field private usedDuringParentMeasurement:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutNode"

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
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private static final k(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 2

    .line 1
    int-to-float p2, p2

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 5
    move-result-wide v0

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p3, v0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->g2(J)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    move-result p2

    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 46
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p2}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 51
    move-result-wide v0

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    instance-of p2, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 64
    move-result p2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 69
    move-result p2

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Lg8/a;->c(F)I

    .line 73
    move-result p2

    .line 74
    .line 75
    :goto_1
    iget-object p3, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/collections/p0;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    check-cast p0, Ljava/lang/Number;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 93
    move-result p0

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/layout/AlignmentLineKt;->c(Landroidx/compose/ui/layout/AlignmentLine;II)I

    .line 97
    move-result p2

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    return v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->l()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    return v0
.end method

.method public final j()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-lez v1, :cond_5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    move v3, v2

    .line 24
    .line 25
    :cond_0
    aget-object v4, v0, v3

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->i()Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    iget-boolean v5, v5, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->L0()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v6

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    check-cast v6, Ljava/util/Map$Entry;

    .line 71
    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    check-cast v7, Landroidx/compose/ui/layout/AlignmentLine;

    .line 77
    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    move-result-object v6

    .line 81
    .line 82
    check-cast v6, Ljava/lang/Number;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 86
    move-result v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 90
    move-result-object v8

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v7, v6, v8}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->k(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    :goto_1
    iget-object v5, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result v5

    .line 116
    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    .line 124
    invoke-interface {v5}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 125
    move-result-object v5

    .line 126
    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    .line 132
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v5

    .line 134
    .line 135
    .line 136
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v6

    .line 138
    .line 139
    if-eqz v6, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    check-cast v6, Landroidx/compose/ui/layout/AlignmentLine;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 149
    move-result v7

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v6, v7, v4}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->k(Landroidx/compose/ui/node/LayoutNodeAlignmentLines;Landroidx/compose/ui/layout/AlignmentLine;ILandroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 153
    goto :goto_2

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 161
    goto :goto_1

    .line 162
    .line 163
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    if-lt v3, v1, :cond_0

    .line 166
    .line 167
    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->alignmentLines:Ljava/util/Map;

    .line 168
    .line 169
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    .line 186
    iput-boolean v2, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    .line 187
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->d()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    if-eqz v0, :cond_6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->d()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->l()V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    const/4 v0, 0x0

    .line 84
    .line 85
    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    .line 86
    :cond_6
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->queryOwner:Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->dirty:Z

    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->previousUsedDuringParentLayout:Z

    return-void
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierLayout:Z

    return-void
.end method

.method public final q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedByModifierMeasurement:Z

    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentLayout:Z

    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->usedDuringParentMeasurement:Z

    return-void
.end method
