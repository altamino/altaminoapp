.class public final Landroidx/compose/material/AppBarDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,547:1\n155#2:548\n155#2:549\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarDefaults\n*L\n250#1:548\n255#1:549\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field private static final BottomAppBarElevation:F

.field private static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material/AppBarDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopAppBarElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/AppBarDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/AppBarDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 8
    const/4 v0, 0x4

    .line 9
    int-to-float v0, v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 13
    move-result v0

    .line 14
    .line 15
    sput v0, Landroidx/compose/material/AppBarDefaults;->TopAppBarElevation:F

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 22
    move-result v0

    .line 23
    .line 24
    sput v0, Landroidx/compose/material/AppBarDefaults;->BottomAppBarElevation:F

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/compose/material/AppBarKt;->g()F

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/material/AppBarKt;->g()F

    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    const/16 v5, 0xa

    .line 37
    const/4 v6, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/PaddingValues;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Landroidx/compose/material/AppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 44
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
.method public final a()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarDefaults;->BottomAppBarElevation:F

    return v0
.end method

.method public final b()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarDefaults;->TopAppBarElevation:F

    return v0
.end method
