.class public final Landroidx/compose/animation/ColorVectorConverterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ColorToVector:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final InverseM1:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final M1:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Le8/l;

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/compose/animation/ColorVectorConverterKt;->M1:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->InverseM1:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4dd6b4
        0x3cdc4faa
        0x3d3bdd61
        0x3ea33ed3
        0x3f6e94f8
        0x3e86a7af
        -0x4216215b
        0x3d511d8a
        0x3f570a1d    # 0.83999807f
    .end array-data

    :array_1
    .array-data 4
        0x3f9fcee0
        -0x42f96b04
        -0x4292e928
        -0x41088a6c
        0x3f8d5ea9
        -0x415c76bd
        0x3e4be1d4
        -0x426d607d
        0x3f99dbe4
    .end array-data
.end method

.method public static final synthetic a()[F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->InverseM1:[F

    return-object v0
.end method

.method public static final synthetic b()[F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->M1:[F

    return-object v0
.end method

.method public static final synthetic c(IFFF[F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/animation/ColorVectorConverterKt;->e(IFFF[F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final d(Landroidx/compose/ui/graphics/Color$Companion;)Le8/l;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/Color$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Color$Companion;",
            ")",
            "Le8/l<",
            "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Le8/l;

    return-object p0
.end method

.method private static final e(IFFF[F)F
    .locals 1

    .line 1
    .line 2
    aget v0, p4, p0

    .line 3
    mul-float/2addr p1, v0

    .line 4
    .line 5
    add-int/lit8 v0, p0, 0x3

    .line 6
    .line 7
    aget v0, p4, v0

    .line 8
    mul-float/2addr p2, v0

    .line 9
    add-float/2addr p1, p2

    .line 10
    .line 11
    add-int/lit8 p0, p0, 0x6

    .line 12
    .line 13
    aget p0, p4, p0

    .line 14
    mul-float/2addr p3, p0

    .line 15
    add-float/2addr p1, p3

    .line 16
    return p1
.end method
