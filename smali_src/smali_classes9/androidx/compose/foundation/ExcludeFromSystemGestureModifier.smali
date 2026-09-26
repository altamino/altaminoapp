.class final Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/OnGloballyPositionedModifier;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemGestureExclusion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/ExcludeFromSystemGestureModifier\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1182#2:158\n1161#2,2:159\n138#3:161\n728#3,2:163\n1#4:162\n*S KotlinDebug\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/ExcludeFromSystemGestureModifier\n*L\n112#1:158\n112#1:159,2\n113#1:161\n118#1:163,2\n*E\n"
.end annotation


# instance fields
.field private final exclusion:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Le8/l;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "view"

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
    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->exclusion:Le8/l;

    .line 13
    return-void
.end method

.method private final a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->n()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->o()J

    .line 18
    move-result-wide v4

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v0, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 22
    move-result-wide v4

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->f()J

    .line 26
    move-result-wide v6

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 30
    move-result-wide v6

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->g()J

    .line 34
    move-result-wide v8

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x3

    .line 44
    .line 45
    new-array v10, v9, [F

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 49
    move-result v11

    .line 50
    const/4 v12, 0x0

    .line 51
    .line 52
    aput v11, v10, v12

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 56
    move-result v11

    .line 57
    const/4 v13, 0x1

    .line 58
    .line 59
    aput v11, v10, v13

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 63
    move-result v11

    .line 64
    const/4 v14, 0x2

    .line 65
    .line 66
    aput v11, v10, v14

    .line 67
    .line 68
    .line 69
    invoke-static {v8, v10}, Ly7/a;->h(F[F)F

    .line 70
    move-result v8

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 74
    move-result v10

    .line 75
    .line 76
    new-array v11, v9, [F

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 80
    move-result v15

    .line 81
    .line 82
    aput v15, v11, v12

    .line 83
    .line 84
    .line 85
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 86
    move-result v15

    .line 87
    .line 88
    aput v15, v11, v13

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 92
    move-result v15

    .line 93
    .line 94
    aput v15, v11, v14

    .line 95
    .line 96
    .line 97
    invoke-static {v10, v11}, Ly7/a;->h(F[F)F

    .line 98
    move-result v10

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 102
    move-result v11

    .line 103
    .line 104
    new-array v15, v9, [F

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 108
    move-result v16

    .line 109
    .line 110
    aput v16, v15, v12

    .line 111
    .line 112
    .line 113
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 114
    move-result v16

    .line 115
    .line 116
    aput v16, v15, v13

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 120
    move-result v16

    .line 121
    .line 122
    aput v16, v15, v14

    .line 123
    .line 124
    .line 125
    invoke-static {v11, v15}, Ly7/a;->g(F[F)F

    .line 126
    move-result v11

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 130
    move-result v2

    .line 131
    .line 132
    new-array v3, v9, [F

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 136
    move-result v4

    .line 137
    .line 138
    aput v4, v3, v12

    .line 139
    .line 140
    .line 141
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 142
    move-result v4

    .line 143
    .line 144
    aput v4, v3, v13

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 148
    move-result v0

    .line 149
    .line 150
    aput v0, v3, v14

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v3}, Ly7/a;->g(F[F)F

    .line 154
    move-result v0

    .line 155
    .line 156
    new-instance v1, Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    invoke-static {v8}, Lg8/a;->c(F)I

    .line 160
    move-result v2

    .line 161
    .line 162
    .line 163
    invoke-static {v10}, Lg8/a;->c(F)I

    .line 164
    move-result v3

    .line 165
    .line 166
    .line 167
    invoke-static {v11}, Lg8/a;->c(F)I

    .line 168
    move-result v4

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 172
    move-result v0

    .line 173
    .line 174
    .line 175
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    return-object v1
.end method

.method private final b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    move-object v1, v0

    .line 6
    move-object v0, p1

    .line 7
    move-object p1, v1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public F0(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "coordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->exclusion:Le8/l;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->b(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->d(Landroid/graphics/Rect;)V

    .line 32
    return-void
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->d(Landroid/graphics/Rect;)V

    .line 5
    return-void
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    new-array v1, v1, [Landroid/graphics/Rect;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/foundation/a;->a(Landroid/view/View;)Ljava/util/List;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "view.systemGestureExclusionRects"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->e(ILjava/util/List;)Z

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->s(Ljava/lang/Object;)Z

    .line 36
    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->g()Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Landroidx/compose/foundation/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method
