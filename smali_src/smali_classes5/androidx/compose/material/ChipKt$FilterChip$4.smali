.class final Landroidx/compose/material/ChipKt$FilterChip$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ChipKt;->c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Le8/p;Le8/p;Le8/p;Le8/q;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $colors:Landroidx/compose/material/SelectableChipColors;

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $leadingIcon:Le8/p;
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

.field final synthetic $selected:Z

.field final synthetic $selectedIcon:Le8/p;
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

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $trailingIcon:Le8/p;
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
.method constructor <init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Le8/p;Le8/p;Le8/p;Le8/q;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/SelectableChipColors;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$selected:Z

    iput-object p2, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$onClick:Le8/a;

    iput-object p3, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p7, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$border:Landroidx/compose/foundation/BorderStroke;

    iput-object p8, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$colors:Landroidx/compose/material/SelectableChipColors;

    iput-object p9, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$leadingIcon:Le8/p;

    iput-object p10, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$selectedIcon:Le8/p;

    iput-object p11, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$trailingIcon:Le8/p;

    iput-object p12, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$content:Le8/q;

    iput p13, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$changed:I

    iput p14, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$changed1:I

    iput p15, p0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$selected:Z

    iget-object v2, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$onClick:Le8/a;

    iget-object v3, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v7, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$border:Landroidx/compose/foundation/BorderStroke;

    iget-object v8, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$colors:Landroidx/compose/material/SelectableChipColors;

    iget-object v9, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$leadingIcon:Le8/p;

    iget-object v10, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$selectedIcon:Le8/p;

    iget-object v11, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$trailingIcon:Le8/p;

    iget-object v12, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$content:Le8/q;

    iget v13, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$changed:I

    or-int/lit8 v14, v13, 0x1

    iget v15, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$changed1:I

    iget v13, v0, Landroidx/compose/material/ChipKt$FilterChip$4;->$$default:I

    move/from16 v16, v13

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v16}, Landroidx/compose/material/ChipKt;->c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Le8/p;Le8/p;Le8/p;Le8/q;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$FilterChip$4;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
