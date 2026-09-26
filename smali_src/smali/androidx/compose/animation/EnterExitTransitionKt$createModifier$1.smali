.class final Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->g(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $alpha$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transformOrigin$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$scale$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$transformOrigin$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/GraphicsLayerScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$graphicsLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$alpha$delegate:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/runtime/State;)F

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->b(F)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$scale$delegate:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->a(Landroidx/compose/runtime/State;)F

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->k(F)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$scale$delegate:Landroidx/compose/runtime/State;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->a(Landroidx/compose/runtime/State;)F

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->n(F)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->$transformOrigin$delegate:Landroidx/compose/runtime/State;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/animation/EnterExitTransitionKt;->b(Landroidx/compose/runtime/State;)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->z(J)V

    .line 42
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->a(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
