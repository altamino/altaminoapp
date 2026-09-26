.class final Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/FloatingActionButtonKt;->a(Le8/p;Le8/a;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $backgroundColor:J

.field final synthetic $contentColor:J

.field final synthetic $elevation:Landroidx/compose/material/FloatingActionButtonElevation;

.field final synthetic $icon:Le8/p;
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

.field final synthetic $text:Le8/p;
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


# direct methods
.method constructor <init>(Le8/p;Le8/a;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material/FloatingActionButtonElevation;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$text:Le8/p;

    iput-object p2, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$onClick:Le8/a;

    iput-object p3, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$icon:Le8/p;

    iput-object p5, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$backgroundColor:J

    iput-wide p9, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$contentColor:J

    iput-object p11, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$elevation:Landroidx/compose/material/FloatingActionButtonElevation;

    iput p12, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$$changed:I

    iput p13, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 15
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$text:Le8/p;

    iget-object v2, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$onClick:Le8/a;

    iget-object v3, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$icon:Le8/p;

    iget-object v5, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$backgroundColor:J

    iget-wide v9, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$contentColor:J

    iget-object v11, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$elevation:Landroidx/compose/material/FloatingActionButtonElevation;

    iget v12, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$$changed:I

    or-int/lit8 v13, v12, 0x1

    iget v14, v0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->$$default:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v14}, Landroidx/compose/material/FloatingActionButtonKt;->a(Le8/p;Le8/a;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
