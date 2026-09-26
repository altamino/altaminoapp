.class final Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/OuterMeasurablePlaceable;->R0(JFLe8/l;)V
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
.field final synthetic $layerBlock:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $position:J

.field final synthetic $zIndex:F

.field final synthetic this$0:Landroidx/compose/ui/node/OuterMeasurablePlaceable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/OuterMeasurablePlaceable;JFLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/OuterMeasurablePlaceable;",
            "JF",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->this$0:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    iput-wide p2, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$position:J

    iput p4, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$zIndex:F

    iput-object p5, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$layerBlock:Le8/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->this$0:Landroidx/compose/ui/node/OuterMeasurablePlaceable;

    iget-wide v1, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$position:J

    iget v3, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$zIndex:F

    iget-object v4, p0, Landroidx/compose/ui/node/OuterMeasurablePlaceable$placeAt$1;->$layerBlock:Le8/l;

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/ui/node/OuterMeasurablePlaceable;->V0(Landroidx/compose/ui/node/OuterMeasurablePlaceable;JFLe8/l;)V

    return-void
.end method
