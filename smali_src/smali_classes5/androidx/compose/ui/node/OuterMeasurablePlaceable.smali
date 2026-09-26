.class public final Landroidx/compose/ui/node/OuterMeasurablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/OuterMeasurablePlaceable$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOuterMeasurablePlaceable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OuterMeasurablePlaceable.kt\nandroidx/compose/ui/node/OuterMeasurablePlaceable\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,251:1\n460#2,11:252\n*S KotlinDebug\n*F\n+ 1 OuterMeasurablePlaceable.kt\nandroidx/compose/ui/node/OuterMeasurablePlaceable\n*L\n90#1:252,11\n*E\n"
.end annotation


# instance fields
.field private duringAlignmentLinesQuery:Z

.field private lastLayerBlock:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastPosition:J

.field private lastZIndex:F

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private measuredOnce:Z

.field private outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentData:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placedOnce:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNodeWrapper;
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
    const-string v0, "outerWrapper"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 18
    .line 19
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->a()J

    .line 23
    move-result-wide p1

    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastPosition:J

    .line 26
    return-void
.end method

.method public static final synthetic V0(Landroidx/compose/ui/node/OuterMeasurablePlaceable;JFLe8/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->b1(JFLe8/l;)V

    .line 4
    return-void
.end method

.method private final a1()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/node/LayoutNode;->j1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    sget-object v4, Landroidx/compose/ui/node/OuterMeasurablePlaceable$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v2

    .line 39
    .line 40
    aget v2, v4, v2

    .line 41
    .line 42
    if-eq v2, v3, :cond_1

    .line 43
    const/4 v3, 0x2

    .line 44
    .line 45
    if-eq v2, v3, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->p1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 59
    :cond_2
    return-void
.end method

.method private final b1(JFLe8/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 3
    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    iget-object p4, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4, p1, p2, p3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->k(Landroidx/compose/ui/layout/Placeable;JF)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 13
    move-wide v2, p1

    .line 14
    move v4, p3

    .line 15
    move-object v5, p4

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->w(Landroidx/compose/ui/layout/Placeable;JFLe8/l;)V

    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method public C0()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->C0()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public M(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->a1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public M0()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->M0()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected R0(JFLe8/l;)V
    .locals 9
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastPosition:J

    .line 3
    .line 4
    iput p3, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastZIndex:F

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastLayerBlock:Le8/l;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->P1()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->b1(JFLe8/l;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iput-boolean v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->placedOnce:Z

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->p(Z)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 50
    .line 51
    new-instance v8, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;

    .line 52
    move-object v2, v8

    .line 53
    move-object v3, p0

    .line 54
    move-wide v4, p1

    .line 55
    move v6, p3

    .line 56
    move-object v7, p4

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;-><init>(Landroidx/compose/ui/node/OuterMeasurablePlaceable;JFLe8/l;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->b(Landroidx/compose/ui/node/LayoutNode;Le8/a;)V

    .line 63
    :goto_0
    return-void
.end method

.method public V(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->a1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final W0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->duringAlignmentLinesQuery:Z

    return v0
.end method

.method public final X0()Landroidx/compose/ui/unit/Constraints;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->measuredOnce:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->N0()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->b(J)Landroidx/compose/ui/unit/Constraints;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public Y(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->a1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final Y0()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-object v0
.end method

.method public final Z0(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 17
    .line 18
    if-eq v1, v2, :cond_4

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-ne v2, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    :goto_1
    sget-object v2, Landroidx/compose/ui/node/OuterMeasurablePlaceable$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v1

    .line 40
    .line 41
    aget v1, v2, v1

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    if-eq v1, v2, :cond_3

    .line 45
    const/4 v2, 0x2

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNode;->g1(Z)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "Intrinsics isn\'t used by the parent"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNode;->i1(Z)V

    .line 67
    :cond_4
    :goto_2
    return-void
.end method

.method public a0(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->a1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public b0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->R()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string p2, "measure() may not be called multiple times on the same Measurable. Current state "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget-object p2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, ". Parent state "

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const/16 p2, 0x2e

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p2

    .line 78
    .line 79
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    sget-object v3, Landroidx/compose/ui/node/OuterMeasurablePlaceable$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 89
    move-result v2

    .line 90
    .line 91
    aget v2, v3, v2

    .line 92
    const/4 v3, 0x1

    .line 93
    .line 94
    if-eq v2, v3, :cond_3

    .line 95
    const/4 v3, 0x2

    .line 96
    .line 97
    if-ne v2, v3, :cond_2

    .line 98
    .line 99
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const-string v1, "Measurable could be only measured from the parent\'s measure or layout block.Parents state is "

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p1

    .line 128
    .line 129
    :cond_3
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/LayoutNode;->q1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 136
    .line 137
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->q1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->d1(J)Z

    .line 144
    return-object p0
.end method

.method public c0(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "alignmentLine"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    .line 22
    :goto_0
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Measuring:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->s(Z)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    :cond_2
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 50
    .line 51
    if-ne v1, v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->r(Z)V

    .line 61
    .line 62
    :cond_3
    :goto_1
    iput-boolean v3, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->duringAlignmentLinesQuery:Z

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 68
    move-result p1

    .line 69
    const/4 v0, 0x0

    .line 70
    .line 71
    iput-boolean v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->duringAlignmentLinesQuery:Z

    .line 72
    return p1
.end method

.method public final c1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->parentData:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public final d1(J)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->t0()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->R()Z

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->R()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v5

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v1, v4

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->n1(Z)V

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->i0()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->N0()J

    .line 49
    move-result-wide v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/Constraints;->g(JJ)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Landroidx/compose/ui/node/Owner;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->l1()V

    .line 67
    return v5

    .line 68
    .line 69
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->q(Z)V

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->z0()Landroidx/compose/runtime/collection/MutableVector;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 86
    move-result v1

    .line 87
    .line 88
    if-lez v1, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    move v2, v5

    .line 94
    .line 95
    :cond_4
    aget-object v3, v0, v2

    .line 96
    .line 97
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->Q()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v5}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->s(Z)V

    .line 105
    add-int/2addr v2, v4

    .line 106
    .line 107
    if-lt v2, v1, :cond_4

    .line 108
    .line 109
    :cond_5
    iput-boolean v4, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->measuredOnce:Z

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 115
    move-result-wide v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->U0(J)V

    .line 119
    .line 120
    iget-object v2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1, p2}, Landroidx/compose/ui/node/LayoutNode;->Y0(J)V

    .line 124
    .line 125
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->a()J

    .line 129
    move-result-wide p1

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 133
    move-result p1

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 141
    move-result p1

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 145
    move-result p2

    .line 146
    .line 147
    if-ne p1, p2, :cond_7

    .line 148
    .line 149
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 153
    move-result p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 157
    move-result p2

    .line 158
    .line 159
    if-eq p1, p2, :cond_6

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    move v4, v5

    .line 162
    .line 163
    :cond_7
    :goto_3
    iget-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 167
    move-result p1

    .line 168
    .line 169
    iget-object p2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 173
    move-result p2

    .line 174
    .line 175
    .line 176
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 177
    move-result-wide p1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->T0(J)V

    .line 181
    return v4
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->parentData:Ljava/lang/Object;

    return-object v0
.end method

.method public final e1()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->placedOnce:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastPosition:J

    .line 7
    .line 8
    iget v2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastZIndex:F

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->lastLayerBlock:Le8/l;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->R0(JFLe8/l;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Check failed."

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public final f1(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->outerWrapper:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-void
.end method
