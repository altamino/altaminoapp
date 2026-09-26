.class public final Landroidx/compose/foundation/DarkThemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/runtime/Composer;I)Z
    .locals 0
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Landroidx/compose/foundation/DarkTheme_androidKt;->a(Landroidx/compose/runtime/Composer;I)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method
