.class public Landroidx/compose/ui/input/pointer/NodeParent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHitPathTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/NodeParent\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,534:1\n1182#2:535\n1161#2,2:536\n460#3,11:538\n460#3,11:549\n460#3,11:560\n460#3,11:571\n523#3:582\n48#3:583\n523#3:584\n*S KotlinDebug\n*F\n+ 1 HitPathTracker.kt\nandroidx/compose/ui/input/pointer/NodeParent\n*L\n139#1:535\n139#1:536,2\n148#1:538,11\n178#1:549,11\n197#1:560,11\n208#1:571,11\n224#1:582\n236#1:583\n237#1:584\n*E\n"
.end annotation


# instance fields
.field private final children:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/Node;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    new-array v1, v1, [Landroidx/compose/ui/input/pointer/Node;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "changes"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "parentCoordinates"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "internalPointerEvent"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-lez v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    move v3, v2

    .line 30
    move v4, v3

    .line 31
    .line 32
    :cond_0
    aget-object v5, v0, v3

    .line 33
    .line 34
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->a(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v4, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    if-lt v3, v1, :cond_0

    .line 51
    move v2, v4

    .line 52
    :cond_3
    return v2
.end method

.method public b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 1
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
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 11
    move-result p1

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    :goto_0
    const/4 v0, -0x1

    .line 15
    .line 16
    if-ge v0, p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    aget-object v0, v0, p1

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/Node;->j()Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->p()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->v(I)Ljava/lang/Object;

    .line 42
    .line 43
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->h()V

    .line 6
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :cond_0
    aget-object v3, v0, v2

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->d()V

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    if-lt v2, v1, :cond_0

    .line 25
    :cond_1
    return-void
.end method

.method public e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 6
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
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-lez v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    .line 22
    :cond_0
    aget-object v5, v0, v3

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 28
    move-result v5

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v4, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 37
    .line 38
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    if-lt v3, v1, :cond_0

    .line 41
    move v2, v4

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 45
    return v2
.end method

.method public f(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "changes"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "parentCoordinates"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "internalPointerEvent"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-lez v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    move v3, v2

    .line 30
    move v4, v3

    .line 31
    .line 32
    :cond_0
    aget-object v5, v0, v3

    .line 33
    .line 34
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->f(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v4, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 47
    .line 48
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    if-lt v3, v1, :cond_0

    .line 51
    move v2, v4

    .line 52
    :cond_3
    return v2
.end method

.method public final g()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/Node;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/ui/input/pointer/Node;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/Node;->k()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->H()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->v(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/Node;->d()V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/NodeParent;->h()V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method
