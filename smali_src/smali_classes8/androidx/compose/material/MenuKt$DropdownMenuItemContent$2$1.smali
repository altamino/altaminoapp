.class final Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MenuKt;->d(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$dirty$1:I

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

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method constructor <init>(ZLe8/q;Landroidx/compose/foundation/layout/RowScope;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/layout/RowScope;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Le8/q;

    iput-object p3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iput p4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

    iput p5, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty$1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 6
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
    goto :goto_3

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    .line 19
    const/4 v0, 0x6

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    .line 24
    const p2, -0x73f8f435

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 28
    .line 29
    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 33
    move-result p2

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_2
    const p2, -0x73f8f41e

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 44
    .line 45
    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 49
    move-result p2

    .line 50
    goto :goto_1

    .line 51
    :goto_2
    const/4 v0, 0x1

    .line 52
    .line 53
    new-array v1, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 65
    move-result-object p2

    .line 66
    const/4 v2, 0x0

    .line 67
    .line 68
    aput-object p2, v1, v2

    .line 69
    .line 70
    new-instance p2, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Le8/q;

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    .line 75
    .line 76
    iget v4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

    .line 77
    .line 78
    iget v5, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty$1:I

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v2, v3, v4, v5}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;-><init>(Le8/q;Landroidx/compose/foundation/layout/RowScope;II)V

    .line 82
    .line 83
    .line 84
    const v2, -0x65af6da8

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v2, v0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    const/16 v0, 0x38

    .line 91
    .line 92
    .line 93
    invoke-static {v1, p2, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 94
    :goto_3
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
