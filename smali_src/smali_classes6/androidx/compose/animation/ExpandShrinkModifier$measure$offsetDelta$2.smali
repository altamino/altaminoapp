.class final Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;
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
        "Landroidx/compose/animation/EnterExitState;",
        "Landroidx/compose/ui/unit/IntOffset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $measuredSize:J

.field final synthetic this$0:Landroidx/compose/animation/ExpandShrinkModifier;


# direct methods
.method constructor <init>(Landroidx/compose/animation/ExpandShrinkModifier;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;->this$0:Landroidx/compose/animation/ExpandShrinkModifier;

    iput-wide p2, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;->$measuredSize:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/EnterExitState;)J
    .locals 3
    .param p1    # Landroidx/compose/animation/EnterExitState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;->this$0:Landroidx/compose/animation/ExpandShrinkModifier;

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;->$measuredSize:J

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroidx/compose/animation/ExpandShrinkModifier;->g(Landroidx/compose/animation/EnterExitState;J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/ExpandShrinkModifier$measure$offsetDelta$2;->a(Landroidx/compose/animation/EnterExitState;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
