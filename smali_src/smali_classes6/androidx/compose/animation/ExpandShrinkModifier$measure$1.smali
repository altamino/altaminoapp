.class final Landroidx/compose/animation/ExpandShrinkModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/ExpandShrinkModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $offset:J

.field final synthetic $offsetDelta:J

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;JJ)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-wide p2, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offset:J

    iput-wide p4, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offsetDelta:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$layout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offset:J

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iget-wide v3, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offsetDelta:J

    .line 16
    .line 17
    .line 18
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 19
    move-result v1

    .line 20
    .line 21
    add-int v3, v0, v1

    .line 22
    .line 23
    iget-wide v0, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offset:J

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iget-wide v4, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->$offsetDelta:J

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 33
    move-result v1

    .line 34
    .line 35
    add-int v4, v0, v1

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v1, p1

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 43
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/ExpandShrinkModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
