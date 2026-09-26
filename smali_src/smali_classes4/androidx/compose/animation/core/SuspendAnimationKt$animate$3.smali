.class final Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/SuspendAnimationKt;->d(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "TT;TV;>;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "TT;TT;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;Landroidx/compose/animation/core/TwoWayConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-TT;-TT;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;->$block:Le8/p;

    iput-object p2, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;->$typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationScope;)V
    .locals 3
    .param p1    # Landroidx/compose/animation/core/AnimationScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$animate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;->$block:Le8/p;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;->$typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Landroidx/compose/animation/core/TwoWayConverter;->b()Le8/l;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->g()Landroidx/compose/animation/core/AnimationVector;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
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
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;->a(Landroidx/compose/animation/core/AnimationScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
