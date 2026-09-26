.class final Landroidx/compose/material/ListItemKt$applyTextStyle$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ListItemKt;->f(Landroidx/compose/ui/text/TextStyle;FLe8/p;)Le8/p;
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
.field final synthetic $contentAlpha:F

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

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method constructor <init>(FLandroidx/compose/ui/text/TextStyle;Le8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/text/TextStyle;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$contentAlpha:F

    iput-object p2, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$icon:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
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
    iget v2, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$contentAlpha:F

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    new-instance v1, Landroidx/compose/material/ListItemKt$applyTextStyle$1$1;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->$icon:Le8/p;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v3}, Landroidx/compose/material/ListItemKt$applyTextStyle$1$1;-><init>(Landroidx/compose/ui/text/TextStyle;Le8/p;)V

    .line 46
    .line 47
    .line 48
    const v2, 0x634b4664

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v2, p2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    const/16 v1, 0x38

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p2, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 58
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ListItemKt$applyTextStyle$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
