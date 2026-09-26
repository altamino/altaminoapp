.class public final Landroidx/compose/material/icons/Icons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/icons/Icons$Filled;,
        Landroidx/compose/material/icons/Icons$Outlined;,
        Landroidx/compose/material/icons/Icons$Rounded;,
        Landroidx/compose/material/icons/Icons$TwoTone;,
        Landroidx/compose/material/icons/Icons$Sharp;
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final Default:Landroidx/compose/material/icons/Icons$Filled;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/material/icons/Icons;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/icons/Icons;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/material/icons/Icons;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material/icons/Icons$Filled;->INSTANCE:Landroidx/compose/material/icons/Icons$Filled;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/material/icons/Icons;->Default:Landroidx/compose/material/icons/Icons$Filled;

    .line 12
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
