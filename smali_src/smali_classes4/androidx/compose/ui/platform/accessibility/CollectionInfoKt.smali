.class public final Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionInfo.kt\nandroidx/compose/ui/platform/accessibility/CollectionInfoKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/ui/TempListUtilsKt\n*L\n1#1,154:1\n32#2,6:155\n32#2,6:161\n49#2,6:167\n37#3,11:173\n66#3,7:184\n*S KotlinDebug\n*F\n+ 1 CollectionInfo.kt\nandroidx/compose/ui/platform/accessibility/CollectionInfoKt\n*L\n44#1:155,6\n87#1:161,6\n96#1:167,6\n123#1:173,11\n131#1:184,7\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsNode;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 39
    move-result v4

    .line 40
    move v5, v1

    .line 41
    .line 42
    :goto_0
    if-ge v5, v4, :cond_3

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    move-object v7, v6

    .line 50
    .line 51
    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 52
    .line 53
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/geometry/Rect;

    .line 57
    move-result-object v8

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 61
    move-result-wide v8

    .line 62
    .line 63
    .line 64
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 65
    move-result v8

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/geometry/Rect;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 73
    move-result-wide v9

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 77
    move-result v9

    .line 78
    sub-float/2addr v8, v9

    .line 79
    .line 80
    .line 81
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 82
    move-result v8

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/geometry/Rect;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 90
    move-result-wide v9

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 94
    move-result v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->f()Landroidx/compose/ui/geometry/Rect;

    .line 98
    move-result-object v7

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 102
    move-result-wide v9

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 106
    move-result v7

    .line 107
    sub-float/2addr v3, v7

    .line 108
    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 111
    move-result v3

    .line 112
    .line 113
    .line 114
    invoke-static {v8, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 115
    move-result-wide v7

    .line 116
    .line 117
    .line 118
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    move-object v3, v6

    .line 124
    goto :goto_0

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_1
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 128
    move-result-object v0

    .line 129
    :cond_3
    move-object p0, v0

    .line 130
    .line 131
    check-cast p0, Ljava/util/Collection;

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 135
    move-result p0

    .line 136
    .line 137
    if-ne p0, v2, :cond_4

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 147
    move-result-wide v3

    .line 148
    goto :goto_3

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 152
    move-result p0

    .line 153
    .line 154
    if-nez p0, :cond_7

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    move-result-object p0

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 162
    move-result v3

    .line 163
    .line 164
    if-gt v2, v3, :cond_5

    .line 165
    move v4, v2

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v5

    .line 170
    .line 171
    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 175
    move-result-wide v5

    .line 176
    .line 177
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 181
    move-result-wide v7

    .line 182
    .line 183
    .line 184
    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 185
    move-result-wide v5

    .line 186
    .line 187
    .line 188
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 189
    move-result-object p0

    .line 190
    .line 191
    if-eq v4, v3, :cond_5

    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_5
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 200
    move-result-wide v3

    .line 201
    .line 202
    .line 203
    :goto_3
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->e(J)F

    .line 204
    move-result p0

    .line 205
    .line 206
    .line 207
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->f(J)F

    .line 208
    move-result v0

    .line 209
    .line 210
    cmpg-float p0, v0, p0

    .line 211
    .line 212
    if-gez p0, :cond_6

    .line 213
    goto :goto_4

    .line 214
    :cond_6
    move v2, v1

    .line 215
    :goto_4
    return v2

    .line 216
    .line 217
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 218
    .line 219
    const-string v0, "Empty collection can\'t be reduced."

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 223
    throw p0
.end method

.method public static final b(Landroidx/compose/ui/semantics/SemanticsNode;)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/semantics/SemanticsNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    :goto_1
    return p0
.end method

.method private static final c(Landroidx/compose/ui/semantics/CollectionInfo;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->a()I

    .line 10
    move-result p0

    .line 11
    .line 12
    if-gez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static final d(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p0    # Landroidx/compose/ui/semantics/SemanticsNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "info"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->f(Landroidx/compose/ui/semantics/CollectionInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->g0(Ljava/lang/Object;)V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 64
    move-result v1

    .line 65
    move v3, v2

    .line 66
    .line 67
    :goto_0
    if-ge v3, v1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 87
    move-result v5

    .line 88
    .line 89
    if-eqz v5, :cond_1

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 99
    move-result p0

    .line 100
    const/4 v1, 0x1

    .line 101
    xor-int/2addr p0, v1

    .line 102
    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->a(Ljava/util/List;)Z

    .line 107
    move-result p0

    .line 108
    .line 109
    if-eqz p0, :cond_3

    .line 110
    move v3, v1

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 115
    move-result v3

    .line 116
    .line 117
    :goto_1
    if-eqz p0, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 121
    move-result v1

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-static {v3, v1, v2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->b(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 125
    move-result-object p0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->g0(Ljava/lang/Object;)V

    .line 129
    :cond_5
    return-void
.end method

.method public static final e(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 14
    .param p0    # Landroidx/compose/ui/semantics/SemanticsNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "node"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "info"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->b()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p0}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->g(Landroidx/compose/ui/semantics/CollectionItemInfo;Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->h0(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->m()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->t()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-eqz v2, :cond_9

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    check-cast v2, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->c(Landroidx/compose/ui/semantics/CollectionInfo;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    return-void

    .line 95
    .line 96
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()Ljava/util/List;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x0

    .line 109
    move v4, v3

    .line 110
    .line 111
    :goto_0
    if-ge v4, v2, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 121
    move-result-object v6

    .line 122
    .line 123
    sget-object v7, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 127
    move-result-object v7

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->c(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 131
    move-result v6

    .line 132
    .line 133
    if-eqz v6, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 139
    goto :goto_0

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    move-result v0

    .line 144
    .line 145
    xor-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt;->a(Ljava/util/List;)Z

    .line 151
    move-result v0

    .line 152
    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 155
    move-result v2

    .line 156
    move v4, v3

    .line 157
    .line 158
    :goto_1
    if-ge v4, v2, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v5

    .line 163
    .line 164
    check-cast v5, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 168
    move-result v6

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->i()I

    .line 172
    move-result v7

    .line 173
    .line 174
    if-ne v6, v7, :cond_8

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    move v8, v3

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    move v8, v4

    .line 180
    :goto_2
    const/4 v9, 0x1

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    move v10, v4

    .line 184
    goto :goto_3

    .line 185
    :cond_7
    move v10, v3

    .line 186
    :goto_3
    const/4 v11, 0x1

    .line 187
    const/4 v12, 0x0

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 191
    move-result-object v5

    .line 192
    .line 193
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    sget-object v7, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1;->INSTANCE:Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$setCollectionItemInfo$2$itemInfo$1;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->g(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Le8/a;)Ljava/lang/Object;

    .line 203
    move-result-object v5

    .line 204
    .line 205
    check-cast v5, Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    move-result v13

    .line 210
    .line 211
    .line 212
    invoke-static/range {v8 .. v13}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 213
    move-result-object v5

    .line 214
    .line 215
    if-eqz v5, :cond_8

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->h0(Ljava/lang/Object;)V

    .line 219
    .line 220
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 221
    goto :goto_1

    .line 222
    :cond_9
    return-void
.end method

.method private static final f(Landroidx/compose/ui/semantics/CollectionInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionInfo;->a()I

    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0, v1, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->b(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static final g(Landroidx/compose/ui/semantics/CollectionItemInfo;Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->c()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->d()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->a()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/CollectionItemInfo;->b()I

    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    sget-object p1, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsProperties;->u()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    sget-object v5, Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$toAccessibilityCollectionItemInfo$1;->INSTANCE:Landroidx/compose/ui/platform/accessibility/CollectionInfoKt$toAccessibilityCollectionItemInfo$1;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->g(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Le8/a;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    check-cast p0, Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v5

    .line 40
    .line 41
    .line 42
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->a(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method
