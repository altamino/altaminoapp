.class public final Landroidx/compose/ui/Alignment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

.field private static final Bottom:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomCenter:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Center:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterVertically:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Start:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Top:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopCenter:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/Alignment$Companion;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/Alignment$Companion;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 10
    .line 11
    const/high16 v1, -0x40800000    # -1.0f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 27
    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 32
    .line 33
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 39
    .line 40
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 46
    .line 47
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    .line 48
    .line 49
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 53
    .line 54
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    .line 55
    .line 56
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 60
    .line 61
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    .line 62
    .line 63
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 67
    .line 68
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    .line 69
    .line 70
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v3, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 74
    .line 75
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    .line 76
    .line 77
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 81
    .line 82
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    .line 83
    .line 84
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 88
    .line 89
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    .line 90
    .line 91
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 95
    .line 96
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    .line 97
    .line 98
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 102
    .line 103
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    .line 104
    .line 105
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 109
    .line 110
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    .line 111
    .line 112
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 116
    .line 117
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    .line 118
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
.method public final a()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final f()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    return-object v0
.end method

.method public final h()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final i()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public final j()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    return-object v0
.end method

.method public final l()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    return-object v0
.end method

.method public final m()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final n()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final o()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    return-object v0
.end method
