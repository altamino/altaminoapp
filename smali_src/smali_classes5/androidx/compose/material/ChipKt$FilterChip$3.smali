.class final Landroidx/compose/material/ChipKt$FilterChip$3;
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
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

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

.field final synthetic $contentColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

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
.method constructor <init>(Landroidx/compose/runtime/State;Le8/p;ZLe8/p;Le8/p;Le8/q;ILandroidx/compose/material/SelectableChipColors;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;Z",
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
            ">;I",
            "Landroidx/compose/material/SelectableChipColors;",
            "ZI)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$contentColor:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$leadingIcon:Le8/p;

    iput-boolean p3, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$selected:Z

    iput-object p4, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$selectedIcon:Le8/p;

    iput-object p5, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$trailingIcon:Le8/p;

    iput-object p6, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$content:Le8/q;

    iput p7, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$$dirty1:I

    iput-object p8, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$colors:Landroidx/compose/material/SelectableChipColors;

    iput-boolean p9, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$enabled:Z

    iput p10, p0, Landroidx/compose/material/ChipKt$FilterChip$3;->$$dirty:I

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
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xb

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 22
    .line 23
    new-array v3, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$contentColor:Landroidx/compose/runtime/State;

    .line 30
    .line 31
    .line 32
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 39
    move-result-wide v5

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 43
    move-result v5

    .line 44
    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 51
    move-result-object v4

    .line 52
    const/4 v5, 0x0

    .line 53
    .line 54
    aput-object v4, v3, v5

    .line 55
    .line 56
    new-instance v4, Landroidx/compose/material/ChipKt$FilterChip$3$1;

    .line 57
    .line 58
    iget-object v7, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$leadingIcon:Le8/p;

    .line 59
    .line 60
    iget-boolean v8, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$selected:Z

    .line 61
    .line 62
    iget-object v9, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$selectedIcon:Le8/p;

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$trailingIcon:Le8/p;

    .line 65
    .line 66
    iget-object v11, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$content:Le8/q;

    .line 67
    .line 68
    iget v12, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$$dirty1:I

    .line 69
    .line 70
    iget-object v13, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$colors:Landroidx/compose/material/SelectableChipColors;

    .line 71
    .line 72
    iget-boolean v14, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$enabled:Z

    .line 73
    .line 74
    iget v15, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$$dirty:I

    .line 75
    .line 76
    iget-object v5, v0, Landroidx/compose/material/ChipKt$FilterChip$3;->$contentColor:Landroidx/compose/runtime/State;

    .line 77
    move-object v6, v4

    .line 78
    .line 79
    move-object/from16 v16, v5

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v6 .. v16}, Landroidx/compose/material/ChipKt$FilterChip$3$1;-><init>(Le8/p;ZLe8/p;Le8/p;Le8/q;ILandroidx/compose/material/SelectableChipColors;ZILandroidx/compose/runtime/State;)V

    .line 83
    .line 84
    .line 85
    const v5, 0x5e4fd99f

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v5, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    const/16 v4, 0x38

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v2, v1, v4}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 95
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$FilterChip$3;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
