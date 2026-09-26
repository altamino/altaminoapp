.class public final Landroidx/compose/ui/input/pointer/PointerIconDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation


# static fields
.field public static final $stable:I

.field private static final Crosshair:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Hand:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Text:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerIconDefaults;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconDefaults;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->c()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Default:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->b()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Crosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->e()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Text:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->d()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Hand:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 32
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
