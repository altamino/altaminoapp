.class public final Landroidx/compose/material/SnackbarDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Landroidx/compose/material/SnackbarDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SnackbarOverlayAlpha:F = 0.8f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/SnackbarDefaults;

    invoke-direct {v0}, Landroidx/compose/material/SnackbarDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)J
    .locals 10
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, 0x6135bce4

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 9
    const/4 v0, 0x6

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->i()J

    .line 17
    move-result-wide v2

    .line 18
    .line 19
    .line 20
    const v4, 0x3f4ccccd    # 0.8f

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    .line 25
    const/16 v8, 0xe

    .line 26
    const/4 v9, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 30
    move-result-wide v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->n()J

    .line 38
    move-result-wide v3

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    return-wide v0
.end method

.method public final b(Landroidx/compose/runtime/Composer;I)J
    .locals 10
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, -0x304ca53a

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 9
    const/4 v0, 0x6

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->o()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->j()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->n()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    const v4, 0x3f19999a    # 0.6f

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    .line 35
    const/16 v8, 0xe

    .line 36
    const/4 v9, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 44
    move-result-wide v0

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->k()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 53
    return-wide v0
.end method
