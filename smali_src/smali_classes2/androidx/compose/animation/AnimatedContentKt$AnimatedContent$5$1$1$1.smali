.class final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1;->a(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $specOnEnter:Landroidx/compose/animation/ContentTransform;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/ContentTransform;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;->$specOnEnter:Landroidx/compose/animation/ContentTransform;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 3
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
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;->$specOnEnter:Landroidx/compose/animation/ContentTransform;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/animation/ContentTransform;->d()F

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v2, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->i(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 18
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
    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$1$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
