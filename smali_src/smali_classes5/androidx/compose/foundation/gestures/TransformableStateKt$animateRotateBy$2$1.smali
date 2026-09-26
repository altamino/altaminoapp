.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->$previous:Lkotlin/jvm/internal/m0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 9
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
    .line 8
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Number;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->$previous:Lkotlin/jvm/internal/m0;

    .line 18
    .line 19
    iget v1, v1, Lkotlin/jvm/internal/m0;->element:F

    .line 20
    .line 21
    sub-float v6, v0, v1

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    const/4 v7, 0x3

    .line 28
    const/4 v8, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/gestures/c;->a(Landroidx/compose/foundation/gestures/TransformScope;FJFILjava/lang/Object;)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->$previous:Lkotlin/jvm/internal/m0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Number;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 43
    move-result p1

    .line 44
    .line 45
    iput p1, v0, Lkotlin/jvm/internal/m0;->element:F

    .line 46
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animateRotateBy$2$1;->a(Landroidx/compose/animation/core/AnimationScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
