.class public final Lcom/narvii/widget/shader/LinearGradientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private color0:I

.field private color1:I

.field private gradient:Landroid/graphics/LinearGradient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tile:Landroid/graphics/Shader$TileMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private x0:F

.field private x1:F

.field private y0:F

.field private y1:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    .line 8
    return-void
.end method


# virtual methods
.method public final getShade()Landroid/graphics/LinearGradient;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/shader/LinearGradientDelegate;->gradient:Landroid/graphics/LinearGradient;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    .line 14
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 15
    move-object v1, v0

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 19
    :cond_0
    return-object v0
.end method

.method public final setShade(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 10
    .param p7    # Landroid/graphics/Shader$TileMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move v2, p1

    .line 3
    move v3, p2

    .line 4
    move v4, p3

    .line 5
    move v5, p4

    .line 6
    move v6, p5

    .line 7
    .line 8
    move/from16 v7, p6

    .line 9
    .line 10
    move-object/from16 v8, p7

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "tile"

    .line 14
    .line 15
    .line 16
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x0:F

    .line 19
    .line 20
    cmpg-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y0:F

    .line 25
    .line 26
    cmpg-float v1, v1, v3

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x1:F

    .line 31
    .line 32
    cmpg-float v1, v1, v4

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y1:F

    .line 37
    .line 38
    cmpg-float v1, v1, v5

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color0:I

    .line 43
    .line 44
    if-ne v1, v6, :cond_0

    .line 45
    .line 46
    iget v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color1:I

    .line 47
    .line 48
    if-ne v1, v7, :cond_0

    .line 49
    .line 50
    iget-object v1, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    .line 51
    .line 52
    if-eq v1, v8, :cond_1

    .line 53
    .line 54
    :cond_0
    iput v2, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x0:F

    .line 55
    .line 56
    iput v3, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y0:F

    .line 57
    .line 58
    iput v4, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->x1:F

    .line 59
    .line 60
    iput v5, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->y1:F

    .line 61
    .line 62
    iput v6, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color0:I

    .line 63
    .line 64
    iput v7, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->color1:I

    .line 65
    .line 66
    iput-object v8, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->tile:Landroid/graphics/Shader$TileMode;

    .line 67
    .line 68
    new-instance v9, Landroid/graphics/LinearGradient;

    .line 69
    move-object v1, v9

    .line 70
    move v2, p1

    .line 71
    move v3, p2

    .line 72
    move v4, p3

    .line 73
    move v5, p4

    .line 74
    move v6, p5

    .line 75
    .line 76
    move/from16 v7, p6

    .line 77
    .line 78
    move-object/from16 v8, p7

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 82
    .line 83
    iput-object v9, v0, Lcom/narvii/widget/shader/LinearGradientDelegate;->gradient:Landroid/graphics/LinearGradient;

    .line 84
    :cond_1
    return-void
.end method
