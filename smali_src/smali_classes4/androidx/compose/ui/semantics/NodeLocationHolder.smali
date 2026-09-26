.class public final Landroidx/compose/ui/semantics/NodeLocationHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;,
        Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/ui/semantics/NodeLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final location:Landroidx/compose/ui/geometry/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final node:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subtreeRoot:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 11
    .line 12
    sput-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "subtreeRoot"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "node"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Landroidx/compose/ui/semantics/SemanticsSortKt;->e(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->Q()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    const/4 v2, 0x2

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, v0, v2, v1}, Landroidx/compose/ui/layout/a;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 53
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    return-void
.end method


# virtual methods
.method public b(Landroidx/compose/ui/semantics/NodeLocationHolder;)I
    .locals 6
    .param p1    # Landroidx/compose/ui/semantics/NodeLocationHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "other"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 14
    const/4 v3, -0x1

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    return v3

    .line 18
    .line 19
    :cond_1
    sget-object v2, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 20
    .line 21
    sget-object v4, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    if-ne v2, v4, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 34
    move-result v2

    .line 35
    sub-float/2addr v0, v2

    .line 36
    .line 37
    cmpg-float v0, v0, v5

    .line 38
    .line 39
    if-gtz v0, :cond_2

    .line 40
    return v3

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 52
    move-result v2

    .line 53
    sub-float/2addr v0, v2

    .line 54
    .line 55
    cmpl-float v0, v0, v5

    .line 56
    .line 57
    if-ltz v0, :cond_3

    .line 58
    return v1

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 61
    .line 62
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 63
    .line 64
    if-ne v0, v2, :cond_6

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 70
    move-result v0

    .line 71
    .line 72
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 76
    move-result v2

    .line 77
    sub-float/2addr v0, v2

    .line 78
    .line 79
    cmpg-float v0, v0, v5

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_4
    if-gez v0, :cond_5

    .line 85
    move v1, v3

    .line 86
    :cond_5
    return v1

    .line 87
    .line 88
    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 92
    move-result v0

    .line 93
    .line 94
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 98
    move-result v2

    .line 99
    sub-float/2addr v0, v2

    .line 100
    .line 101
    cmpg-float v0, v0, v5

    .line 102
    .line 103
    if-nez v0, :cond_f

    .line 104
    .line 105
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 109
    move-result v0

    .line 110
    .line 111
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 115
    move-result v2

    .line 116
    sub-float/2addr v0, v2

    .line 117
    .line 118
    cmpg-float v0, v0, v5

    .line 119
    .line 120
    if-nez v0, :cond_d

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 126
    move-result v0

    .line 127
    .line 128
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 132
    move-result v2

    .line 133
    sub-float/2addr v0, v2

    .line 134
    .line 135
    cmpg-float v0, v0, v5

    .line 136
    .line 137
    if-nez v0, :cond_b

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 143
    move-result v0

    .line 144
    .line 145
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 149
    move-result v2

    .line 150
    sub-float/2addr v0, v2

    .line 151
    .line 152
    cmpg-float v0, v0, v5

    .line 153
    .line 154
    if-nez v0, :cond_9

    .line 155
    .line 156
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->e(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 167
    .line 168
    .line 169
    invoke-static {v2}, Landroidx/compose/ui/semantics/SemanticsSortKt;->e(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    iget-object v4, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 177
    .line 178
    new-instance v5, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child1$1;

    .line 179
    .line 180
    .line 181
    invoke-direct {v5, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child1$1;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsSortKt;->a(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    iget-object v4, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 188
    .line 189
    new-instance v5, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child2$1;

    .line 190
    .line 191
    .line 192
    invoke-direct {v5, v2}, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child2$1;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsSortKt;->a(Landroidx/compose/ui/node/LayoutNode;Le8/l;)Landroidx/compose/ui/node/LayoutNode;

    .line 196
    move-result-object v2

    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    if-eqz v2, :cond_7

    .line 201
    .line 202
    new-instance v1, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 203
    .line 204
    iget-object v3, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v3, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 208
    .line 209
    new-instance v0, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 210
    .line 211
    iget-object p1, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, p1, v2}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder;->b(Landroidx/compose/ui/semantics/NodeLocationHolder;)I

    .line 218
    move-result p1

    .line 219
    return p1

    .line 220
    .line 221
    :cond_7
    if-eqz v0, :cond_8

    .line 222
    return v1

    .line 223
    :cond_8
    return v3

    .line 224
    .line 225
    :cond_9
    if-gez v0, :cond_a

    .line 226
    goto :goto_1

    .line 227
    :cond_a
    move v1, v3

    .line 228
    :goto_1
    return v1

    .line 229
    .line 230
    :cond_b
    if-gez v0, :cond_c

    .line 231
    goto :goto_2

    .line 232
    :cond_c
    move v1, v3

    .line 233
    :goto_2
    return v1

    .line 234
    .line 235
    :cond_d
    if-gez v0, :cond_e

    .line 236
    move v1, v3

    .line 237
    :cond_e
    return v1

    .line 238
    .line 239
    :cond_f
    if-gez v0, :cond_10

    .line 240
    goto :goto_3

    .line 241
    :cond_10
    move v1, v3

    .line 242
    :goto_3
    return v1
.end method

.method public final c()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/semantics/NodeLocationHolder;->b(Landroidx/compose/ui/semantics/NodeLocationHolder;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
