.class public final Landroidx/compose/material/MenuDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuDefaults\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,298:1\n155#2:299\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuDefaults\n*L\n182#1:299\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field private static final DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material/MenuDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/MenuDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/MenuDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/material/MenuKt;->g()F

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    int-to-float v1, v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->b(FF)Landroidx/compose/foundation/layout/PaddingValues;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Landroidx/compose/material/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 24
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
.method public final a()Landroidx/compose/foundation/layout/PaddingValues;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    return-object v0
.end method
