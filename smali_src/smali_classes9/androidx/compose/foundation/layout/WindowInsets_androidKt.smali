.class public final Landroidx/compose/foundation/layout/WindowInsets_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/core/graphics/Insets;Ljava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;
    .locals 1
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "insets"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "name"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/layout/ValueInsets;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->b(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method public static final b(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;
    .locals 4
    .param p0    # Landroidx/core/graphics/Insets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    .line 8
    .line 9
    iget v1, p0, Landroidx/core/graphics/Insets;->left:I

    .line 10
    .line 11
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    .line 12
    .line 13
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    .line 14
    .line 15
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    .line 19
    return-object v0
.end method
