.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;
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
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    invoke-direct {v0}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/compose/animation/core/AnimationVector4D;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->g()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Color;->j(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->s(J)F

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->r(J)F

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->p(J)F

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->b()[F

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v3, v0, v4}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 31
    move-result v1

    .line 32
    float-to-double v4, v1

    .line 33
    .line 34
    .line 35
    const v1, 0x3eaaaaab

    .line 36
    float-to-double v6, v1

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 40
    move-result-wide v4

    .line 41
    double-to-float v1, v4

    .line 42
    const/4 v4, 0x1

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->b()[F

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v2, v3, v0, v5}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 50
    move-result v4

    .line 51
    float-to-double v4, v4

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 55
    move-result-wide v4

    .line 56
    double-to-float v4, v4

    .line 57
    const/4 v5, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/compose/animation/ColorVectorConverterKt;->b()[F

    .line 61
    move-result-object v8

    .line 62
    .line 63
    .line 64
    invoke-static {v5, v2, v3, v0, v8}, Landroidx/compose/animation/ColorVectorConverterKt;->c(IFFF[F)F

    .line 65
    move-result v0

    .line 66
    float-to-double v2, v0

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 70
    move-result-wide v2

    .line 71
    double-to-float v0, v2

    .line 72
    .line 73
    new-instance v2, Landroidx/compose/animation/core/AnimationVector4D;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 77
    move-result p1

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p1, v1, v4, v0}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    .line 81
    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->a(J)Landroidx/compose/animation/core/AnimationVector4D;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
