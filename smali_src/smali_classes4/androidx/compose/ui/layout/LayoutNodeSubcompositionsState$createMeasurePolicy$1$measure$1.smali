.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $indexAfterMeasure:I

.field final synthetic $result:Landroidx/compose/ui/layout/MeasureResult;

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 5
    .line 6
    iput p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$indexAfterMeasure:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
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
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 3
    .line 4
    iget v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$indexAfterMeasure:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->d()V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->a(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->n(I)V

    .line 22
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure$1;->$result:Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
