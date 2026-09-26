.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/animation/core/AnimationScope<",
        "Ljava/lang/Float;",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        ">;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

.field final synthetic $previous:Lkotlin/jvm/internal/m0;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/m0;Landroidx/compose/foundation/gestures/TransformScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$previous:Lkotlin/jvm/internal/m0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 8
    .param p1    # Landroidx/compose/animation/core/AnimationScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$animateTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$previous:Lkotlin/jvm/internal/m0;

    .line 8
    .line 9
    iget v0, v0, Lkotlin/jvm/internal/m0;->element:F

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    cmpg-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    :goto_0
    move v2, v0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Number;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$previous:Lkotlin/jvm/internal/m0;

    .line 31
    .line 32
    iget v1, v1, Lkotlin/jvm/internal/m0;->element:F

    .line 33
    div-float/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x6

    .line 41
    const/4 v7, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/gestures/c;->a(Landroidx/compose/foundation/gestures/TransformScope;FJFILjava/lang/Object;)V

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->$previous:Lkotlin/jvm/internal/m0;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Number;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 56
    move-result p1

    .line 57
    .line 58
    iput p1, v0, Lkotlin/jvm/internal/m0;->element:F

    .line 59
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateZoomBy$3$1;->a(Landroidx/compose/animation/core/AnimationScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
