.class final Landroidx/compose/material/SurfaceKt$Surface$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->c(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $color:J

.field final synthetic $content:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $elevation:F

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$onClick:Le8/a;

    iput-object p2, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p5, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$color:J

    iput-wide p7, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$contentColor:J

    iput-object p9, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$border:Landroidx/compose/foundation/BorderStroke;

    iput p10, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$elevation:F

    iput-object p11, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p12, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$content:Le8/p;

    iput p13, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$$changed:I

    iput p14, p0, Landroidx/compose/material/SurfaceKt$Surface$5;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$onClick:Le8/a;

    iget-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$enabled:Z

    iget-object v4, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$color:J

    iget-wide v7, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$contentColor:J

    iget-object v9, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v10, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$elevation:F

    iget-object v11, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v12, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$content:Le8/p;

    iget v13, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$$changed:I

    or-int/lit8 v14, v13, 0x1

    iget v15, v0, Landroidx/compose/material/SurfaceKt$Surface$5;->$$default:I

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v15}, Landroidx/compose/material/SurfaceKt;->c(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$5;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
