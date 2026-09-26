.class public final Landroidx/compose/ui/graphics/colorspace/Connector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/graphics/colorspace/Connector$Companion;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->b(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 6

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->a()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->f(II)Z

    .line 10
    move-result p3

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    return-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    sget-object p3, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 24
    move-result-wide v3

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->f()J

    .line 32
    move-result-wide v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->b()J

    .line 36
    move-result-wide v4

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 40
    move-result p3

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    if-eqz p3, :cond_1

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_1
    if-nez v1, :cond_3

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 52
    .line 53
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move-object p1, p2

    .line 56
    .line 57
    :goto_1
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 67
    move-result-object p2

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_5
    sget-object p2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->c()[F

    .line 74
    move-result-object p2

    .line 75
    .line 76
    :goto_2
    if-eqz p3, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->r()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->c()[F

    .line 84
    move-result-object p1

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_6
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->c()[F

    .line 91
    move-result-object p1

    .line 92
    :goto_3
    const/4 p3, 0x3

    .line 93
    .line 94
    new-array p3, p3, [F

    .line 95
    const/4 v0, 0x0

    .line 96
    .line 97
    aget v1, p2, v0

    .line 98
    .line 99
    aget v2, p1, v0

    .line 100
    div-float/2addr v1, v2

    .line 101
    .line 102
    aput v1, p3, v0

    .line 103
    const/4 v0, 0x1

    .line 104
    .line 105
    aget v1, p2, v0

    .line 106
    .line 107
    aget v2, p1, v0

    .line 108
    div-float/2addr v1, v2

    .line 109
    .line 110
    aput v1, p3, v0

    .line 111
    const/4 v0, 0x2

    .line 112
    .line 113
    aget p2, p2, v0

    .line 114
    .line 115
    aget p1, p1, v0

    .line 116
    div-float/2addr p2, p1

    .line 117
    .line 118
    aput p2, p3, v0

    .line 119
    return-object p3
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->c()I

    .line 11
    move-result v0

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1, v0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    .line 17
    return-object v1
.end method
