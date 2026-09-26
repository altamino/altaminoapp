.class public final Landroidx/compose/foundation/text/selection/HandlePositionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/HandlePositionProvider$WhenMappings;
    }
.end annotation


# instance fields
.field private final handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offset:J


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    iput-wide p2, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/foundation/text/selection/HandleReferencePoint;J)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 2
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "anchorBounds"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "layoutDirection"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->handleReferencePoint:Landroidx/compose/foundation/text/selection/HandleReferencePoint;

    .line 13
    .line 14
    sget-object p3, Landroidx/compose/foundation/text/selection/HandlePositionProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result p2

    .line 19
    .line 20
    aget p2, p3, p2

    .line 21
    const/4 p3, 0x1

    .line 22
    .line 23
    if-eq p2, p3, :cond_2

    .line 24
    const/4 p3, 0x2

    .line 25
    .line 26
    if-eq p2, p3, :cond_1

    .line 27
    const/4 p4, 0x3

    .line 28
    .line 29
    if-ne p2, p4, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 33
    move-result p2

    .line 34
    .line 35
    iget-wide v0, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 39
    move-result p4

    .line 40
    add-int/2addr p2, p4

    .line 41
    .line 42
    .line 43
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 44
    move-result p4

    .line 45
    div-int/2addr p4, p3

    .line 46
    sub-int/2addr p2, p4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 50
    move-result p1

    .line 51
    .line 52
    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 53
    .line 54
    .line 55
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 56
    move-result p3

    .line 57
    add-int/2addr p1, p3

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 61
    move-result-wide p1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    new-instance p1, Lw7/s;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 68
    throw p1

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 72
    move-result p2

    .line 73
    .line 74
    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 75
    .line 76
    .line 77
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 78
    move-result p3

    .line 79
    add-int/2addr p2, p3

    .line 80
    .line 81
    .line 82
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 83
    move-result p3

    .line 84
    sub-int/2addr p2, p3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 88
    move-result p1

    .line 89
    .line 90
    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 91
    .line 92
    .line 93
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 94
    move-result p3

    .line 95
    add-int/2addr p1, p3

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 99
    move-result-wide p1

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 104
    move-result p2

    .line 105
    .line 106
    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 107
    .line 108
    .line 109
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 110
    move-result p3

    .line 111
    add-int/2addr p2, p3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 115
    move-result p1

    .line 116
    .line 117
    iget-wide p3, p0, Landroidx/compose/foundation/text/selection/HandlePositionProvider;->offset:J

    .line 118
    .line 119
    .line 120
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 121
    move-result p3

    .line 122
    add-int/2addr p1, p3

    .line 123
    .line 124
    .line 125
    invoke-static {p2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 126
    move-result-wide p1

    .line 127
    :goto_0
    return-wide p1
.end method
