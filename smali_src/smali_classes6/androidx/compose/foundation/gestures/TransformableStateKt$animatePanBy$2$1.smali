.class final Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        ">;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

.field final synthetic $previous:Lkotlin/jvm/internal/o0;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/o0;Landroidx/compose/foundation/gestures/TransformScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->$previous:Lkotlin/jvm/internal/o0;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 11
    .param p1    # Landroidx/compose/animation/core/AnimationScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
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
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->$previous:Lkotlin/jvm/internal/o0;

    .line 18
    .line 19
    iget-wide v2, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 23
    move-result-wide v6

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->$$this$transform:Landroidx/compose/foundation/gestures/TransformScope;

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x5

    .line 29
    const/4 v10, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/gestures/c;->a(Landroidx/compose/foundation/gestures/TransformScope;FJFILjava/lang/Object;)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->$previous:Lkotlin/jvm/internal/o0;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 44
    move-result-wide v1

    .line 45
    .line 46
    iput-wide v1, v0, Lkotlin/jvm/internal/o0;->element:J

    .line 47
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableStateKt$animatePanBy$2$1;->a(Landroidx/compose/animation/core/AnimationScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
