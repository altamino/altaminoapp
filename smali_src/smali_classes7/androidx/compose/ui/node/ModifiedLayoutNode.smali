.class public final Landroidx/compose/ui/node/ModifiedLayoutNode;
.super Landroidx/compose/ui/node/LayoutNodeWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifiedLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifiedLayoutNode.kt\nandroidx/compose/ui/node/ModifiedLayoutNode\n+ 2 LayoutNodeWrapper.kt\nandroidx/compose/ui/node/LayoutNodeWrapper\n+ 3 Placeable.kt\nandroidx/compose/ui/layout/Placeable$PlacementScope$Companion\n*L\n1#1,153:1\n230#2,4:154\n329#3,8:158\n*S KotlinDebug\n*F\n+ 1 ModifiedLayoutNode.kt\nandroidx/compose/ui/node/ModifiedLayoutNode\n*L\n51#1:154,4\n97#1:158,8\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private modifier:Landroidx/compose/ui/layout/LayoutModifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private modifierState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/layout/LayoutModifier;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toBeReusedForSameModifier:Z

.field private wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->Companion:Landroidx/compose/ui/node/ModifiedLayoutNode$Companion;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/Paint;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->b()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/Paint;->j(J)V

    .line 22
    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->q(F)V

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->b()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/Paint;->p(I)V

    .line 36
    .line 37
    sput-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "wrapped"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "modifier"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 22
    return-void
.end method

.method private final m2()Landroidx/compose/ui/layout/LayoutModifier;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :cond_0
    iput-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/ui/layout/LayoutModifier;

    .line 21
    return-object v0
.end method


# virtual methods
.method public F1()Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-object v0
.end method

.method public M(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->m2()Landroidx/compose/ui/layout/LayoutModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method protected R0(JFLe8/l;)V
    .locals 0
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
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LayoutNodeWrapper;->R0(JFLe8/l;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->G1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->P1()Z

    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->X1()V

    .line 21
    .line 22
    sget-object p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->F0()J

    .line 26
    move-result-wide p2

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 30
    move-result p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-interface {p3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->z(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    .line 42
    move-result p4

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->y(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->f(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-interface {p2}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 60
    .line 61
    .line 62
    invoke-static {p4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->f(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->e(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 66
    return-void
.end method

.method public S1()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->S1()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->d2(Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 11
    return-void
.end method

.method public V(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->m2()Landroidx/compose/ui/layout/LayoutModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public W1()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->W1()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierState:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 14
    :goto_0
    return-void
.end method

.method public Y(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->m2()Landroidx/compose/ui/layout/LayoutModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public Y1(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "canvas"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->m1(Landroidx/compose/ui/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->x1()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getShowLayoutBounds()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object v0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifierBoundsPaint:Landroidx/compose/ui/graphics/Paint;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->n1(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Paint;)V

    .line 32
    :cond_0
    return-void
.end method

.method public a0(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->m2()Landroidx/compose/ui/layout/LayoutModifier;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, v2, p1}, Landroidx/compose/ui/layout/LayoutModifier;->S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public b0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c1(Landroidx/compose/ui/node/LayoutNodeWrapper;J)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/compose/ui/layout/LayoutModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->b2(Landroidx/compose/ui/layout/MeasureResult;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->v1()Landroidx/compose/ui/node/OwnedLayer;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->X0(Landroidx/compose/ui/node/LayoutNodeWrapper;)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/node/OwnedLayer;->e(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->V1()V

    .line 37
    return-object p0
.end method

.method public i1(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 5
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
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->y1()Landroidx/compose/ui/layout/MeasureResult;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v1

    .line 42
    :cond_0
    return v1

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    return v1

    .line 54
    :cond_2
    const/4 v1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c2(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->C1()J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->H1()F

    .line 65
    move-result v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->w1()Le8/l;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/compose/ui/node/ModifiedLayoutNode;->R0(JFLe8/l;)V

    .line 73
    const/4 v1, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->c2(Z)V

    .line 77
    .line 78
    instance-of p1, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->C1()J

    .line 88
    move-result-wide v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 92
    move-result p1

    .line 93
    :goto_0
    add-int/2addr v0, p1

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->C1()J

    .line 102
    move-result-wide v1

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 106
    move-result p1

    .line 107
    goto :goto_0

    .line 108
    :goto_1
    return v0
.end method

.method public final k2()Landroidx/compose/ui/layout/LayoutModifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    return-object v0
.end method

.method public final l2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->toBeReusedForSameModifier:Z

    return v0
.end method

.method public final n2(Landroidx/compose/ui/layout/LayoutModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->modifier:Landroidx/compose/ui/layout/LayoutModifier;

    return-void
.end method

.method public final o2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->toBeReusedForSameModifier:Z

    return-void
.end method

.method public p2(Landroidx/compose/ui/node/LayoutNodeWrapper;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/node/ModifiedLayoutNode;->wrapped:Landroidx/compose/ui/node/LayoutNodeWrapper;

    return-void
.end method

.method public z1()Landroidx/compose/ui/layout/MeasureScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifiedLayoutNode;->F1()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->z1()Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
