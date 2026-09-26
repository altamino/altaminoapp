.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $isMagnifierShown$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $magnifier:Landroidx/compose/foundation/PlatformMagnifier;

.field final synthetic $previousSize:Lkotlin/jvm/internal/o0;

.field final synthetic $sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Le8/l<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedZoom$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/foundation/PlatformMagnifier;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/o0;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/PlatformMagnifier;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/o0;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lw7/l0;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$previousSize:Lkotlin/jvm/internal/o0;

    iput-object p9, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    .line 2
    invoke-static {v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->b(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->h(Landroidx/compose/runtime/State;)J

    move-result-wide v2

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    .line 4
    invoke-static {v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->e(Landroidx/compose/runtime/State;)Le8/l;

    move-result-object v0

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->u()J

    move-result-wide v5

    .line 5
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v4}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->a(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    .line 8
    invoke-static {v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->f(Landroidx/compose/runtime/State;)F

    move-result v6

    .line 9
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/PlatformMagnifier;->b(JJF)V

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 10
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->a()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$previousSize:Lkotlin/jvm/internal/o0;

    iget-object v3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    .line 11
    iget-wide v5, v2, Lkotlin/jvm/internal/o0;->element:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    iput-wide v0, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 13
    invoke-static {v4}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->g(Landroidx/compose/runtime/State;)Le8/l;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    move-result-wide v0

    invoke-interface {v3, v0, v1}, Landroidx/compose/ui/unit/Density;->q(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->c(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v0

    .line 15
    invoke-interface {v2, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;->$magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 16
    invoke-interface {v0}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
