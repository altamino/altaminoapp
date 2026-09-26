.class final Landroidx/compose/foundation/gestures/TransformableStateKt$rememberTransformableState$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Ljava/lang/Float;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Ljava/lang/Float;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $lambdaState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/q<",
            "Ljava/lang/Float;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(FJF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$rememberTransformableState$1$1;->$lambdaState:Landroidx/compose/runtime/State;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Le8/q;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, p2, p3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    check-cast p3, Ljava/lang/Number;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/compose/foundation/gestures/TransformableStateKt$rememberTransformableState$1$1;->a(FJF)V

    .line 22
    .line 23
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 24
    return-object p1
.end method
