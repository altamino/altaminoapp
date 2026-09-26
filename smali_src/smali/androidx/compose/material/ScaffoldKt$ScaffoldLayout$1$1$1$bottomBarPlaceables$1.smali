.class final Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
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

.field final synthetic $bottomBar:Le8/p;
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

.field final synthetic $fabPlacement:Landroidx/compose/material/FabPlacement;


# direct methods
.method constructor <init>(Landroidx/compose/material/FabPlacement;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/FabPlacement;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$fabPlacement:Landroidx/compose/material/FabPlacement;

    iput-object p2, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$bottomBar:Le8/p;

    iput p3, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 2
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
    new-array p2, p2, [Landroidx/compose/runtime/ProvidedValue;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$fabPlacement:Landroidx/compose/material/FabPlacement;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    aput-object v0, p2, v1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$bottomBar:Le8/p;

    .line 35
    .line 36
    iget v1, p0, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->$$dirty:I

    .line 37
    .line 38
    shr-int/lit8 v1, v1, 0xf

    .line 39
    .line 40
    and-int/lit8 v1, v1, 0x70

    .line 41
    .line 42
    or-int/lit8 v1, v1, 0x8

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 46
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$1$1$1$bottomBarPlaceables$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
