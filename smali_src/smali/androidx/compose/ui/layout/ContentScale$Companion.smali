.class public final Landroidx/compose/ui/layout/ContentScale$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion;

.field private static final Crop:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FillBounds:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FillHeight:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FillWidth:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Fit:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Inside:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/ui/layout/FixedScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->$$INSTANCE:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;-><init>()V

    .line 20
    .line 21
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale;

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillHeight$1;-><init>()V

    .line 27
    .line 28
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillHeight:Landroidx/compose/ui/layout/ContentScale;

    .line 29
    .line 30
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillWidth$1;-><init>()V

    .line 34
    .line 35
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillWidth:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;-><init>()V

    .line 41
    .line 42
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Inside:Landroidx/compose/ui/layout/ContentScale;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/ui/layout/FixedScale;

    .line 45
    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/FixedScale;-><init>(F)V

    .line 50
    .line 51
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->None:Landroidx/compose/ui/layout/FixedScale;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;-><init>()V

    .line 57
    .line 58
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->FillBounds:Landroidx/compose/ui/layout/ContentScale;

    .line 59
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
.method public final a()Landroidx/compose/ui/layout/ContentScale;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/layout/ContentScale;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/layout/ContentScale;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->Inside:Landroidx/compose/ui/layout/ContentScale;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/layout/FixedScale;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->None:Landroidx/compose/ui/layout/FixedScale;

    return-object v0
.end method
