.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->a(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/animation/core/TwoWayConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/AnimationVector4D;)J
    .locals 7
    .param p1    # Landroidx/compose/animation/core/AnimationVector4D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "it"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->g()F

    .line 9
    move-result v0

    .line 10
    float-to-double v0, v0

    .line 11
    .line 12
    const/high16 v2, 0x40400000    # 3.0f

    .line 13
    float-to-double v2, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->h()F

    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 27
    move-result-wide v4

    .line 28
    double-to-float v1, v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->i()F

    .line 32
    move-result v4

    .line 33
    float-to-double v4, v4

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 37
    move-result-wide v2

    .line 38
    double-to-float v2, v2

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->a()[F

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v0, v1, v2, v4}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->a()[F

    .line 52
    move-result-object v5

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v0, v1, v2, v5}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->a()[F

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-static {v5, v0, v1, v2, v6}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 65
    move-result v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector4D;->f()F

    .line 69
    move-result p1

    .line 70
    const/4 v1, 0x0

    .line 71
    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v1, v2}, Lj8/m;->m(FFF)F

    .line 76
    move-result p1

    .line 77
    .line 78
    const/high16 v1, -0x40000000    # -2.0f

    .line 79
    .line 80
    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    .line 82
    .line 83
    invoke-static {v3, v1, v2}, Lj8/m;->m(FFF)F

    .line 84
    move-result v3

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v1, v2}, Lj8/m;->m(FFF)F

    .line 88
    move-result v4

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1, v2}, Lj8/m;->m(FFF)F

    .line 92
    move-result v0

    .line 93
    .line 94
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->g()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v4, v0, p1, v1}, Landroidx/compose/ui/graphics/ColorKt;->a(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 102
    move-result-wide v0

    .line 103
    .line 104
    iget-object p1, p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->$colorSpace:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 108
    move-result-wide v0

    .line 109
    return-wide v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;->a(Landroidx/compose/animation/core/AnimationVector4D;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
