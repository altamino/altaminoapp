.class public final Landroidx/compose/ui/graphics/AndroidPath_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;ILkotlin/jvm/internal/k;)V

    .line 8
    return-object v0
.end method

.method public static final b(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 1
    .param p0    # Landroid/graphics/Path;
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
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    .line 11
    return-object v0
.end method
