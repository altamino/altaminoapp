.class final Landroidx/compose/material/ChipKt$Chip$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ChipKt;->a(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Le8/p;Le8/q;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $colors:Landroidx/compose/material/ChipColors;

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

.field final synthetic $contentColor$delegate:Landroidx/compose/runtime/State;
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


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Le8/p;Landroidx/compose/material/ChipColors;ZILe8/q;)V
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
            ">;",
            "Landroidx/compose/material/ChipColors;",
            "ZI",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ChipKt$Chip$2;->$contentColor$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material/ChipKt$Chip$2;->$leadingIcon:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/ChipKt$Chip$2;->$colors:Landroidx/compose/material/ChipColors;

    iput-boolean p4, p0, Landroidx/compose/material/ChipKt$Chip$2;->$enabled:Z

    iput p5, p0, Landroidx/compose/material/ChipKt$Chip$2;->$$dirty:I

    iput-object p6, p0, Landroidx/compose/material/ChipKt$Chip$2;->$content:Le8/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 9
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
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 18
    .line 19
    new-array v0, p2, [Landroidx/compose/runtime/ProvidedValue;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/material/ChipKt$Chip$2;->$contentColor$delegate:Landroidx/compose/runtime/State;

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Landroidx/compose/material/ChipKt;->d(Landroidx/compose/runtime/State;)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    .line 44
    aput-object v1, v0, v2

    .line 45
    .line 46
    new-instance v1, Landroidx/compose/material/ChipKt$Chip$2$1;

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/compose/material/ChipKt$Chip$2;->$leadingIcon:Le8/p;

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/compose/material/ChipKt$Chip$2;->$colors:Landroidx/compose/material/ChipColors;

    .line 51
    .line 52
    iget-boolean v6, p0, Landroidx/compose/material/ChipKt$Chip$2;->$enabled:Z

    .line 53
    .line 54
    iget v7, p0, Landroidx/compose/material/ChipKt$Chip$2;->$$dirty:I

    .line 55
    .line 56
    iget-object v8, p0, Landroidx/compose/material/ChipKt$Chip$2;->$content:Le8/q;

    .line 57
    move-object v3, v1

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v3 .. v8}, Landroidx/compose/material/ChipKt$Chip$2$1;-><init>(Le8/p;Landroidx/compose/material/ChipColors;ZILe8/q;)V

    .line 61
    .line 62
    .line 63
    const v2, 0x27c9c90f

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    const/16 v1, 0x38

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p2, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 73
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$Chip$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
