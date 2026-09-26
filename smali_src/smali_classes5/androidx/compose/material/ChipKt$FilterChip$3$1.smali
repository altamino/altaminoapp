.class final Landroidx/compose/material/ChipKt$FilterChip$3$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ChipKt$FilterChip$3;->a(Landroidx/compose/runtime/Composer;I)V
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
.method constructor <init>(Le8/p;ZLe8/p;Le8/p;Le8/q;ILandroidx/compose/material/SelectableChipColors;ZILandroidx/compose/runtime/State;)V
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
            "ZI",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$leadingIcon:Le8/p;

    iput-boolean p2, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selected:Z

    iput-object p3, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selectedIcon:Le8/p;

    iput-object p4, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$trailingIcon:Le8/p;

    iput-object p5, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$content:Le8/q;

    iput p6, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty1:I

    iput-object p7, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$colors:Landroidx/compose/material/SelectableChipColors;

    iput-boolean p8, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$enabled:Z

    iput p9, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty:I

    iput-object p10, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$contentColor:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 12
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
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 19
    const/4 v0, 0x6

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/compose/material/Typography;->b()Landroidx/compose/ui/text/TextStyle;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    new-instance v11, Landroidx/compose/material/ChipKt$FilterChip$3$1$1;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$leadingIcon:Le8/p;

    .line 32
    .line 33
    iget-boolean v2, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selected:Z

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selectedIcon:Le8/p;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$trailingIcon:Le8/p;

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$content:Le8/q;

    .line 40
    .line 41
    iget v6, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty1:I

    .line 42
    .line 43
    iget-object v7, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$colors:Landroidx/compose/material/SelectableChipColors;

    .line 44
    .line 45
    iget-boolean v8, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$enabled:Z

    .line 46
    .line 47
    iget v9, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty:I

    .line 48
    .line 49
    iget-object v10, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$contentColor:Landroidx/compose/runtime/State;

    .line 50
    move-object v0, v11

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/ChipKt$FilterChip$3$1$1;-><init>(Le8/p;ZLe8/p;Le8/p;Le8/q;ILandroidx/compose/material/SelectableChipColors;ZILandroidx/compose/runtime/State;)V

    .line 54
    .line 55
    .line 56
    const v0, -0x5c030632

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const/16 v1, 0x30

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 67
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$FilterChip$3$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
