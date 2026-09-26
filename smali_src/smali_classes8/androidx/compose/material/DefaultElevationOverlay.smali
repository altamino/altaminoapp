.class final Landroidx/compose/material/DefaultElevationOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/ElevationOverlay;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nElevationOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ElevationOverlay.kt\nandroidx/compose/material/DefaultElevationOverlay\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,102:1\n155#2:103\n*S KotlinDebug\n*F\n+ 1 ElevationOverlay.kt\nandroidx/compose/material/DefaultElevationOverlay\n*L\n71#1:103\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/DefaultElevationOverlay;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/DefaultElevationOverlay;

    invoke-direct {v0}, Landroidx/compose/material/DefaultElevationOverlay;-><init>()V

    sput-object v0, Landroidx/compose/material/DefaultElevationOverlay;->INSTANCE:Landroidx/compose/material/DefaultElevationOverlay;

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
.method public a(JFLandroidx/compose/runtime/Composer;I)J
    .locals 2
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    int-to-float v1, v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v1}, Landroidx/compose/ui/unit/Dp;->e(FF)I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->o()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    and-int/lit8 v0, p5, 0xe

    .line 28
    .line 29
    and-int/lit8 p5, p5, 0x70

    .line 30
    or-int/2addr p5, v0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/material/ElevationOverlayKt;->a(JFLandroidx/compose/runtime/Composer;I)J

    .line 34
    move-result-wide p3

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->g(JJ)J

    .line 38
    move-result-wide p1

    .line 39
    :cond_0
    return-wide p1
.end method
