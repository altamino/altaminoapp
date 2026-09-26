.class public final Landroidx/compose/material/ContentAlpha;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentAlpha.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentAlpha.kt\nandroidx/compose/material/ContentAlpha\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,132:1\n76#2:133\n*S KotlinDebug\n*F\n+ 1 ContentAlpha.kt\nandroidx/compose/material/ContentAlpha\n*L\n77#1:133\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/ContentAlpha;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/ContentAlpha;

    invoke-direct {v0}, Landroidx/compose/material/ContentAlpha;-><init>()V

    sput-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

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

.method private final a(FFLandroidx/compose/runtime/Composer;I)F
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, -0x5b18edc7

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p4

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p4

    .line 15
    .line 16
    check-cast p4, Landroidx/compose/ui/graphics/Color;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    sget-object p4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 23
    const/4 v2, 0x6

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p3, v2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 27
    move-result-object p4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Landroidx/compose/material/Colors;->o()Z

    .line 31
    move-result p4

    .line 32
    .line 33
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 34
    .line 35
    if-eqz p4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 39
    move-result p4

    .line 40
    float-to-double v0, p4

    .line 41
    .line 42
    cmpl-double p4, v0, v2

    .line 43
    .line 44
    if-lez p4, :cond_1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->j(J)F

    .line 49
    move-result p4

    .line 50
    float-to-double v0, p4

    .line 51
    .line 52
    cmpg-double p4, v0, v2

    .line 53
    .line 54
    if-gez p4, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move p1, p2

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 60
    return p1
.end method


# virtual methods
.method public final b(Landroidx/compose/runtime/Composer;I)F
    .locals 1
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x2506827f

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    shl-int/lit8 p2, p2, 0x6

    .line 9
    .line 10
    and-int/lit16 p2, p2, 0x380

    .line 11
    .line 12
    or-int/lit8 p2, p2, 0x36

    .line 13
    .line 14
    .line 15
    const v0, 0x3ec28f5c    # 0.38f

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;I)F

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 23
    return p2
.end method

.method public final c(Landroidx/compose/runtime/Composer;I)F
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x258041bf

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    shl-int/lit8 p2, p2, 0x6

    .line 9
    .line 10
    and-int/lit16 p2, p2, 0x380

    .line 11
    .line 12
    or-int/lit8 p2, p2, 0x36

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    .line 17
    const v1, 0x3f5eb852    # 0.87f

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;I)F

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 25
    return p2
.end method

.method public final d(Landroidx/compose/runtime/Composer;I)F
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7727281f

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    shl-int/lit8 p2, p2, 0x6

    .line 9
    .line 10
    and-int/lit16 p2, p2, 0x380

    .line 11
    .line 12
    or-int/lit8 p2, p2, 0x36

    .line 13
    .line 14
    .line 15
    const v0, 0x3f3d70a4    # 0.74f

    .line 16
    .line 17
    .line 18
    const v1, 0x3f19999a    # 0.6f

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;I)F

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 26
    return p2
.end method
