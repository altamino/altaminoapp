.class final Landroidx/compose/material/SurfaceKt$Surface$11;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->e(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $checked:Z

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

.field final synthetic $onCheckedChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
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
            ">;III)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move v1, p1

    iput-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$checked:Z

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$onCheckedChange:Le8/l;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p4

    iput-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$enabled:Z

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p6

    iput-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$color:J

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$contentColor:J

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$border:Landroidx/compose/foundation/BorderStroke;

    move v1, p11

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$elevation:F

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$content:Le8/p;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$changed:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    iget-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$checked:Z

    iget-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$onCheckedChange:Le8/l;

    iget-object v3, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$color:J

    iget-wide v8, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$contentColor:J

    iget-object v10, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v11, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$elevation:F

    iget-object v12, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v13, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$content:Le8/p;

    iget v15, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$changed:I

    or-int/lit8 v15, v15, 0x1

    move/from16 p1, v1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$changed1:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$11;->$$default:I

    move/from16 v17, v1

    move/from16 v1, p1

    invoke-static/range {v1 .. v17}, Landroidx/compose/material/SurfaceKt;->e(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$11;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
