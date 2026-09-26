.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,534:1\n366#2,12:535\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/HitPathTracker\n*L\n58#1:535,12\n*E\n"
.end annotation


# instance fields
.field private final root:Landroidx/compose/ui/input/pointer/NodeParent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "rootCoordinates"

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
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;)V
    .locals 11
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/input/pointer/PointerInputFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "pointerInputFilters"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 8
    .line 9
    .line 10
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    .line 16
    :goto_0
    if-ge v4, v1, :cond_6

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 32
    move-result v7

    .line 33
    .line 34
    if-lez v7, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 38
    move-result-object v6

    .line 39
    move v8, v3

    .line 40
    .line 41
    :cond_0
    aget-object v9, v6, v8

    .line 42
    move-object v10, v9

    .line 43
    .line 44
    check-cast v10, Landroidx/compose/ui/input/pointer/Node;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/Node;->k()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 48
    move-result-object v10

    .line 49
    .line 50
    .line 51
    invoke-static {v10, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    move-result v10

    .line 53
    .line 54
    if-eqz v10, :cond_1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    if-lt v8, v7, :cond_0

    .line 60
    :cond_2
    const/4 v9, 0x0

    .line 61
    .line 62
    :goto_1
    check-cast v9, Landroidx/compose/ui/input/pointer/Node;

    .line 63
    .line 64
    if-eqz v9, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/Node;->m()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/Node;->j()Landroidx/compose/runtime/collection/MutableVector;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/MutableVector;->i(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/Node;->j()Landroidx/compose/runtime/collection/MutableVector;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    move-object v0, v9

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v2, v3

    .line 96
    .line 97
    :cond_5
    new-instance v6, Landroidx/compose/ui/input/pointer/Node;

    .line 98
    .line 99
    .line 100
    invoke-direct {v6, v5}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/input/pointer/PointerInputFilter;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/Node;->j()Landroidx/compose/runtime/collection/MutableVector;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->g()Landroidx/compose/runtime/collection/MutableVector;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 119
    move-object v0, v6

    .line 120
    .line 121
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_6
    return-void
.end method

.method public final b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 4
    .param p1    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "internalPointerEvent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a()Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->a(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return v1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a()Ljava/util/Map;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v3, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->f(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 33
    move-result p2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    :cond_1
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1
.end method

.method public final c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->d()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->c()V

    .line 11
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/NodeParent;->h()V

    .line 6
    return-void
.end method
